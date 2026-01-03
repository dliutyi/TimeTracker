import 'package:flutter/material.dart';
import '../../app/theme/app_theme.dart';

/// Helper to show animated modals
class AnimatedModal {
  /// Show a modal with fade and scale animation
  static Future<T?> show<T>({
    required BuildContext context,
    required Widget child,
    bool barrierDismissible = true,
    Color? barrierColor,
    String? barrierLabel,
    bool useRootNavigator = false,
    RouteSettings? routeSettings,
  }) {
    return showGeneralDialog<T>(
      context: context,
      barrierDismissible: barrierDismissible,
      barrierLabel: barrierLabel ?? MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: barrierColor ?? Colors.black54,
      transitionDuration: AppTheme.animationMedium,
      pageBuilder: (context, animation, secondaryAnimation) {
        return SafeArea(child: child);
      },
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        // Fade and scale animation
        return FadeTransition(
          opacity: animation,
          child: ScaleTransition(
            scale: Tween<double>(begin: 0.8, end: 1.0).animate(
              CurvedAnimation(
                parent: animation,
                curve: Curves.easeOutCubic,
              ),
            ),
            child: child,
          ),
        );
      },
      useRootNavigator: useRootNavigator,
      routeSettings: routeSettings,
    );
  }
}

