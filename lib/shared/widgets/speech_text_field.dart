import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/speech_service.dart';
import '../../app/theme/app_theme.dart';

/// Custom text field with speech recognition microphone button
class SpeechTextField extends ConsumerStatefulWidget {
  final String? label;
  final String? hint;
  final String? initialValue;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final TextInputType? keyboardType;
  final int? maxLength;
  final bool enabled;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final int? maxLines;
  final int? minLines;

  const SpeechTextField({
    super.key,
    this.label,
    this.hint,
    this.initialValue,
    this.onChanged,
    this.onSubmitted,
    this.keyboardType,
    this.maxLength,
    this.enabled = true,
    this.validator,
    this.controller,
    this.focusNode,
    this.maxLines = 1,
    this.minLines,
  });

  @override
  ConsumerState<SpeechTextField> createState() => _SpeechTextFieldState();
}

class _SpeechTextFieldState extends ConsumerState<SpeechTextField>
    with SingleTickerProviderStateMixin {
  late TextEditingController _controller;
  late FocusNode _focusNode;
  bool _isControllerExternal = false;
  bool _isFocusNodeExternal = false;
  bool _isRecording = false;
  String _accumulatedText = '';
  String? _originalText; // Store original text while showing "Listening"
  StreamSubscription<String>? _speechSubscription;
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController(text: widget.initialValue);
    _isControllerExternal = widget.controller != null;
    _focusNode = widget.focusNode ?? FocusNode();
    _isFocusNodeExternal = widget.focusNode != null;

    _animationController = AnimationController(
      vsync: this,
      duration: AppTheme.animationMedium,
    );

    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.2).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );

    if (widget.initialValue != null && !_isControllerExternal) {
      _controller.text = widget.initialValue!;
    }
  }

  @override
  void dispose() {
    _speechSubscription?.cancel();
    final speechService = ref.read(speechServiceProvider);
    speechService.stopListening();
    if (!_isControllerExternal) {
      _controller.dispose();
    }
    if (!_isFocusNodeExternal) {
      _focusNode.dispose();
    }
    _animationController.dispose();
    super.dispose();
  }

  Future<void> _handleMicrophonePress() async {
    final speechService = ref.read(speechServiceProvider);
    
    // Set recording state immediately for UI feedback
    setState(() {
      _isRecording = true;
    });
    _animationController.repeat(reverse: true);

    // Initialize if needed
    if (!speechService.isInitialized) {
      final initialized = await speechService.initialize();
      if (!initialized) {
        if (mounted) {
          setState(() {
            _isRecording = false;
          });
          _animationController.stop();
          _animationController.reset();
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Speech recognition is not available'),
              duration: Duration(seconds: 2),
            ),
          );
        }
        return;
      }
    }

    // Store original text and show "Listening"
    _originalText = _controller.text;
    _accumulatedText = '';
    _controller.text = 'Listening...';
    _focusNode.unfocus(); // Ensure no focus during recording
    
    // Listen to text stream BEFORE starting (to catch any errors)
    _speechSubscription?.cancel();
    _speechSubscription = speechService.textStream.listen(
      (text) {
        // Accumulate text instead of updating in real-time
        if (mounted && text.isNotEmpty) {
          _accumulatedText = text; // Keep the latest recognized text
        }
      },
      onError: (error) {
        debugPrint('Speech stream error: $error');
        if (mounted) {
          setState(() {
            _isRecording = false;
          });
          _animationController.stop();
          _animationController.reset();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Speech recognition error: $error'),
              duration: const Duration(seconds: 2),
            ),
          );
        }
      },
    );

    // Start listening
    final started = await speechService.startListening();
    if (!started) {
      if (mounted) {
        setState(() {
          _isRecording = false;
        });
        _animationController.stop();
        _animationController.reset();
        _speechSubscription?.cancel();
        _speechSubscription = null;
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Failed to start speech recognition. Please check microphone permissions.'),
            duration: Duration(seconds: 3),
          ),
        );
      }
      return;
    }

    // Successfully started - UI feedback is already set above
  }

  void _handleMicrophoneRelease() async {
    final speechService = ref.read(speechServiceProvider);
    await speechService.stopListening();
    _speechSubscription?.cancel();
    _speechSubscription = null;

    if (mounted) {
      setState(() {
        _isRecording = false;
      });
      _animationController.stop();
      _animationController.reset();
      
      // Restore original text and insert accumulated text at the end
      if (_originalText != null) {
        final originalText = _originalText!;
        if (_accumulatedText.isNotEmpty) {
          // Insert accumulated text at the end of original text
          _controller.text = originalText + _accumulatedText;
          _controller.selection = TextSelection.collapsed(
            offset: _controller.text.length,
          );
          widget.onChanged?.call(_controller.text);
        } else {
          // No text recognized, restore original
          _controller.text = originalText;
        }
        _originalText = null;
      }
      _accumulatedText = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return TextFormField(
      controller: _controller,
      focusNode: _focusNode,
      enabled: widget.enabled && !_isRecording, // Disable during recording
      keyboardType: widget.keyboardType,
      maxLength: widget.maxLength,
      maxLines: widget.maxLines,
      minLines: widget.minLines,
      validator: widget.validator,
      onChanged: widget.onChanged,
      onFieldSubmitted: widget.onSubmitted,
      readOnly: _isRecording, // Make read-only while recording
      decoration: InputDecoration(
        labelText: widget.label,
        hintText: widget.hint,
        suffixIcon: Listener(
          onPointerDown: (event) {
            // Prevent text field from getting focus
            _focusNode.unfocus();
            // Stop event propagation to prevent text field from handling it
            _handleMicrophonePress();
          },
          onPointerUp: (event) {
            _handleMicrophoneRelease();
          },
          onPointerCancel: (event) {
            _handleMicrophoneRelease();
          },
          // Ensure we capture all pointer events, even when text field is focused
          behavior: HitTestBehavior.opaque,
          child: AnimatedBuilder(
            animation: _scaleAnimation,
            builder: (context, child) {
              return Transform.scale(
                scale: _isRecording ? _scaleAnimation.value : 1.0,
                child: Container(
                  padding: const EdgeInsets.all(12),
                  child: Icon(
                    _isRecording ? Icons.mic : Icons.mic_none,
                    color: _isRecording
                        ? theme.colorScheme.error
                        : theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

