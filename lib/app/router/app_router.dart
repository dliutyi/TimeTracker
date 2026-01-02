import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/database/database_service.dart';
import 'root_widget.dart';

/// Initialize database before app starts
Future<void> initializeApp() async {
  await DatabaseService.instance.initialize();
}

/// Router configuration for the app
final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: 'root',
        builder: (context, state) => const AppRootWidget(),
      ),
      GoRoute(
        path: '/main',
        name: 'main',
        builder: (context, state) {
          // Placeholder for main navigation - will be implemented in TASK-017
          return const Scaffold(
            body: Center(
              child: Text('Main Navigation - Coming in TASK-017'),
            ),
          );
        },
      ),
    ],
  );
});

