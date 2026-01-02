import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

/// Speech recognition service
class SpeechService {
  final stt.SpeechToText _speech = stt.SpeechToText();
  bool _isInitialized = false;
  bool _isListening = false;
  final StreamController<String> _textController = StreamController<String>.broadcast();

  /// Stream of recognized text
  Stream<String> get textStream => _textController.stream;

  /// Whether speech recognition is currently listening
  bool get isListening => _isListening;

  /// Whether the service is initialized
  bool get isInitialized => _isInitialized;

  /// Initialize the speech recognition service
  Future<bool> initialize() async {
    if (_isInitialized) return true;

    try {
      final available = await _speech.initialize(
        onError: (error) {
          debugPrint('Speech recognition error: $error');
          _textController.addError(error);
        },
        onStatus: (status) {
          debugPrint('Speech recognition status: $status');
          if (status == 'done' || status == 'notListening') {
            _isListening = false;
          }
        },
      );

      _isInitialized = available;
      return available;
    } catch (e) {
      debugPrint('Failed to initialize speech recognition: $e');
      return false;
    }
  }

  /// Check and request microphone permission
  Future<bool> checkPermission() async {
    final status = await Permission.microphone.status;
    if (status.isGranted) {
      return true;
    }

    if (status.isDenied) {
      final result = await Permission.microphone.request();
      return result.isGranted;
    }

    if (status.isPermanentlyDenied) {
      // User has permanently denied permission
      return false;
    }

    return false;
  }

  /// Start listening for speech
  Future<bool> startListening({
    String localeId = 'en_US',
    stt.ListenMode listenMode = stt.ListenMode.dictation,
    bool pauseFor = true,
    bool partialResults = true,
    bool onDevice = false,
  }) async {
    if (!_isInitialized) {
      final initialized = await initialize();
      if (!initialized) {
        return false;
      }
    }

    if (_isListening) {
      return true;
    }

    final hasPermission = await checkPermission();
    if (!hasPermission) {
      _textController.addError('Microphone permission denied');
      return false;
    }

    try {
      final options = stt.SpeechListenOptions(
        listenMode: listenMode,
        partialResults: partialResults,
        onDevice: onDevice,
        cancelOnError: false,
      );

      final result = await _speech.listen(
        onResult: (result) {
          if (result.finalResult) {
            _textController.add(result.recognizedWords);
          } else if (partialResults) {
            _textController.add(result.recognizedWords);
          }
        },
        localeId: localeId,
        listenOptions: options,
        listenFor: const Duration(seconds: 30),
      );

      _isListening = result;
      return result;
    } catch (e) {
      debugPrint('Failed to start listening: $e');
      _textController.addError(e.toString());
      return false;
    }
  }

  /// Stop listening for speech
  Future<void> stopListening() async {
    if (!_isListening) return;

    try {
      await _speech.stop();
      _isListening = false;
    } catch (e) {
      debugPrint('Failed to stop listening: $e');
    }
  }

  /// Cancel listening
  Future<void> cancelListening() async {
    if (!_isListening) return;

    try {
      await _speech.cancel();
      _isListening = false;
    } catch (e) {
      debugPrint('Failed to cancel listening: $e');
    }
  }

  /// Get available locales
  Future<List<stt.LocaleName>> getAvailableLocales() async {
    if (!_isInitialized) {
      await initialize();
    }
    return _speech.locales();
  }

  /// Dispose resources
  void dispose() {
    _speech.stop();
    _textController.close();
  }
}

/// Provider for speech service
final speechServiceProvider = Provider<SpeechService>((ref) {
  final service = SpeechService();
  ref.onDispose(() => service.dispose());
  return service;
});

