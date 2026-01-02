import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/database/database_service.dart';
import '../../features/navigation/main_navigation_screen.dart';
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
        builder: (context, state) => const MainNavigationScreen(),
      ),
    ],
  );
});

