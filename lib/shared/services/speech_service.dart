import 'dart:async';
import 'dart:ui' as ui;
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
          _isListening = false;
        },
        onStatus: (status) {
          debugPrint('Speech recognition status: $status');
          // Only update listening state if we're actually in a listening session
          // Don't update on initialization status changes
          if (status == 'done' || status == 'notListening') {
            // Only set to false if we were actually listening
            if (_isListening) {
              _isListening = false;
            }
          } else if (status == 'listening') {
            _isListening = true;
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
  /// If localeId is not provided, uses system locale
  Future<bool> startListening({
    String? localeId,
    stt.ListenMode listenMode = stt.ListenMode.dictation,
    bool pauseFor = true,
    bool partialResults = true,
    bool onDevice = false,
  }) async {
    if (!_isInitialized) {
      final initialized = await initialize();
      if (!initialized) {
        debugPrint('Speech recognition not initialized');
        return false;
      }
    }

    if (_isListening) {
      debugPrint('Already listening');
      return true;
    }

    final hasPermission = await checkPermission();
    if (!hasPermission) {
      debugPrint('Microphone permission denied');
      _textController.addError('Microphone permission denied');
      return false;
    }

    try {
      // Check if speech recognition is available
      final available = await _speech.initialize();
      if (!available) {
        debugPrint('Speech recognition not available');
        _textController.addError('Speech recognition not available');
        return false;
      }

      // Use provided locale or detect system locale
      final finalLocaleId = localeId ?? await getSystemLocale();
      debugPrint('Using locale for speech recognition: $finalLocaleId');

      final options = stt.SpeechListenOptions(
        listenMode: listenMode,
        partialResults: partialResults,
        onDevice: onDevice,
        cancelOnError: false,
      );

      debugPrint('Starting speech recognition...');
      final result = await _speech.listen(
        onResult: (result) {
          debugPrint('Speech result: ${result.recognizedWords} (final: ${result.finalResult})');
          if (result.finalResult) {
            _textController.add(result.recognizedWords);
          } else if (partialResults) {
            _textController.add(result.recognizedWords);
          }
        },
        localeId: finalLocaleId,
        listenOptions: options,
        listenFor: const Duration(seconds: 30),
      );

      debugPrint('Speech listen result: $result');
      // Handle null result - if null, check if actually listening
      if (result == null) {
        // Wait a bit and check status - sometimes listen() returns null but is actually listening
        await Future.delayed(const Duration(milliseconds: 200));
        final isActuallyListening = _speech.isListening;
        _isListening = isActuallyListening;
        debugPrint('Speech isListening after null result: $isActuallyListening');
        if (isActuallyListening) {
          return true;
        }
        // If still not listening, there might be an error
        debugPrint('Speech recognition failed to start - isListening is false');
        return false;
      }
      _isListening = result;
      return result;
    } catch (e, stackTrace) {
      debugPrint('Failed to start listening: $e');
      debugPrint('Stack trace: $stackTrace');
      _textController.addError(e.toString());
      _isListening = false;
      return false;
    }
  }

  /// Stop listening for speech
  Future<void> stopListening() async {
    if (!_isListening && !_speech.isListening) return;

    try {
      await _speech.stop();
      _isListening = false;
      debugPrint('Speech recognition stopped');
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

  /// Get system locale for speech recognition
  /// Returns locale in format like 'en_US', 'es_ES', etc.
  /// Falls back to 'en_US' if system locale is not available
  /// 
  /// Note: When app localization is implemented (Phase 4), this can be
  /// extended to use the app's selected locale from settings instead of system locale
  Future<String> getSystemLocale() async {
    try {
      // Get system locale
      final systemLocale = ui.PlatformDispatcher.instance.locale;
      final localeString = '${systemLocale.languageCode}_${systemLocale.countryCode ?? systemLocale.languageCode.toUpperCase()}';
      
      // Check if this locale is available for speech recognition
      if (!_isInitialized) {
        await initialize();
      }
      
      final availableLocales = await getAvailableLocales();
      final isAvailable = availableLocales.any((locale) => locale.localeId == localeString);
      
      if (isAvailable) {
        debugPrint('Using system locale for speech recognition: $localeString');
        return localeString;
      } else {
        // Try to find a close match (same language, different country)
        final languageCode = systemLocale.languageCode;
        final closeMatch = availableLocales.firstWhere(
          (locale) => locale.localeId.startsWith('${languageCode}_'),
          orElse: () => availableLocales.firstWhere(
            (locale) => locale.localeId == 'en_US',
            orElse: () => availableLocales.first,
          ),
        );
        
        debugPrint('System locale $localeString not available, using: ${closeMatch.localeId}');
        return closeMatch.localeId;
      }
    } catch (e) {
      debugPrint('Failed to get system locale: $e, falling back to en_US');
      return 'en_US';
    }
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

