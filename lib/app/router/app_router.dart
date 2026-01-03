import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/database/database_service.dart';
import '../../features/navigation/main_navigation_screen.dart';
import '../../app/theme/app_theme.dart';
import 'root_widget.dart';

/// Initialize database before app starts
Future<void> initializeApp() async {
  await DatabaseService.instance.initialize();
}

/// Custom page transition builder for smooth animations
Page<T> _buildPageWithTransition<T extends Object?>(
  Widget child,
  GoRouterState state,
) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      // Fade and slide transition
      return FadeTransition(
        opacity: animation,
        child: SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0.0, 0.1),
            end: Offset.zero,
          ).animate(CurvedAnimation(
            parent: animation,
            curve: Curves.easeOutCubic,
          )),
          child: child,
        ),
      );
    },
    transitionDuration: AppTheme.animationMedium,
  );
}

/// Router configuration for the app
final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: 'root',
        pageBuilder: (context, state) => _buildPageWithTransition(
          const AppRootWidget(),
          state,
        ),
      ),
      GoRoute(
        path: '/main',
        name: 'main',
        pageBuilder: (context, state) => _buildPageWithTransition(
          const MainNavigationScreen(),
          state,
        ),
      ),
    ],
  );
});

