import 'dart:ui';
import 'package:flutter/material.dart';

/// Liquid glass tab bar with Apple-inspired design
class LiquidGlassTabBar extends StatelessWidget implements PreferredSizeWidget {
  final List<BottomNavigationBarItem> items;
  final int currentIndex;
  final ValueChanged<int> onTap;
  final Set<int>? disabledIndices;

  const LiquidGlassTabBar({
    super.key,
    required this.items,
    required this.currentIndex,
    required this.onTap,
    this.disabledIndices,
  });

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
          child: Container(
            decoration: BoxDecoration(
              color: isDark
                  ? Colors.black.withOpacity(0.3)
                  : Colors.white.withOpacity(0.7),
              border: Border(
                top: BorderSide(
                  color: isDark
                      ? Colors.white.withOpacity(0.1)
                      : Colors.black.withOpacity(0.1),
                  width: 0.5,
                ),
              ),
            ),
            child: SafeArea(
              top: false,
              child: Container(
                height: 65,
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(
                    items.length,
                    (index) => _TabBarItem(
                      item: items[index],
                      isSelected: currentIndex == index,
                      isDisabled: disabledIndices?.contains(index) ?? false,
                      onTap: () => onTap(index),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _TabBarItem extends StatelessWidget {
  final BottomNavigationBarItem item;
  final bool isSelected;
  final bool isDisabled;
  final VoidCallback onTap;

  const _TabBarItem({
    required this.item,
    required this.isSelected,
    this.isDisabled = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = isDisabled
        ? theme.colorScheme.onSurface.withOpacity(0.3)
        : isSelected
            ? theme.colorScheme.primary
            : theme.colorScheme.onSurface.withOpacity(0.6);

    return Expanded(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: isDisabled ? null : onTap,
          borderRadius: BorderRadius.circular(12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildIcon(
                isSelected ? item.activeIcon : item.icon,
                color: color,
              ),
              const SizedBox(height: 4),
              if (item.label != null)
                Text(
                  item.label!,
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: color,
                    fontSize: 10,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIcon(Widget? iconWidget, {required Color color}) {
    if (iconWidget == null) {
      return Icon(Icons.circle, color: color, size: 24);
    }
    if (iconWidget is Icon) {
      return Icon(
        iconWidget.icon,
        color: color,
        size: 24,
      );
    }
    return IconTheme(
      data: IconThemeData(color: color, size: 24),
      child: iconWidget,
    );
  }
}

