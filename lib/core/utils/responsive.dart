import 'package:flutter/material.dart';

/// Responsive breakpoints
class ResponsiveBreakpoints {
  static const double tablet = 600.0;
  static const double desktop = 1200.0;
}

/// Responsive utilities
class Responsive {
  /// Check if screen is tablet or larger
  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width >= ResponsiveBreakpoints.tablet;
  }

  /// Check if screen is desktop
  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= ResponsiveBreakpoints.desktop;
  }

  /// Get responsive padding
  static EdgeInsets getPadding(BuildContext context) {
    if (isTablet(context)) {
      return const EdgeInsets.symmetric(horizontal: 48.0, vertical: 24.0);
    }
    return const EdgeInsets.all(16.0);
  }

  /// Get responsive max width for content
  static double getMaxContentWidth(BuildContext context) {
    if (isDesktop(context)) {
      return 1200.0;
    }
    if (isTablet(context)) {
      return 800.0;
    }
    return double.infinity;
  }

  /// Get responsive column count for grids
  static int getColumnCount(BuildContext context, {int defaultColumns = 1}) {
    if (isDesktop(context)) {
      return defaultColumns * 3;
    }
    if (isTablet(context)) {
      return defaultColumns * 2;
    }
    return defaultColumns;
  }

  /// Get responsive spacing multiplier
  static double getSpacingMultiplier(BuildContext context) {
    if (isTablet(context)) {
      return 1.5;
    }
    return 1.0;
  }
}

