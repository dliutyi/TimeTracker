// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yudi_time_tracker/core/database/database_service.dart';

import 'package:yudi_time_tracker/main.dart';

void main() {
  setUpAll(() async {
    // Initialize database for tests
    await DatabaseService.instance.initialize();
  });

  testWidgets('App loads successfully', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      const ProviderScope(
        child: MyApp(),
      ),
    );

    // Pump a few frames to allow initialization
    await tester.pump();
    await tester.pump(const Duration(seconds: 1));
    
    // Verify that the app builds without errors
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
