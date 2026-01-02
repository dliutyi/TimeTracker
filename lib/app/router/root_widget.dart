import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../features/welcome/welcome_screen.dart';
import '../../features/welcome/welcome_screen.dart' as welcome;
import '../../features/navigation/main_navigation_screen.dart';

/// Root widget that decides whether to show welcome or main screen
class AppRootWidget extends ConsumerWidget {
  const AppRootWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final welcomeShownAsync = ref.watch(welcome.welcomeShownProvider);

    return welcomeShownAsync.when(
      data: (shown) {
        if (shown) {
          // Welcome already shown, show main navigation
          return const MainNavigationScreen();
        } else {
          // Show welcome screen
          return const WelcomeScreen();
        }
      },
      loading: () => const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
      error: (error, stack) => Scaffold(
        body: Center(
          child: Text('Error: $error'),
        ),
      ),
    );
  }
}

