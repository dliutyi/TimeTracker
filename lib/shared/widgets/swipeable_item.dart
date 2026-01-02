import 'package:flutter/material.dart';
import '../../app/theme/app_theme.dart';

/// Swipe action configuration
class SwipeAction {
  final String label;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  const SwipeAction({
    required this.label,
    required this.icon,
    required this.color,
    required this.onTap,
  });
}

/// Swipeable list item with left and right swipe actions
class SwipeableItem extends StatefulWidget {
  final Widget child;
  final List<SwipeAction>? leftActions;
  final List<SwipeAction>? rightActions;
  final VoidCallback? onSwipeRight;
  final double threshold;
  final bool dismissOnAction;

  const SwipeableItem({
    super.key,
    required this.child,
    this.leftActions,
    this.rightActions,
    this.onSwipeRight,
    this.threshold = 0.3,
    this.dismissOnAction = true,
  });

  @override
  State<SwipeableItem> createState() => _SwipeableItemState();
}

class _SwipeableItemState extends State<SwipeableItem>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  double _dragOffset = 0.0;
  bool _isDragging = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: AppTheme.animationMedium,
    );
    _animation = Tween<double>(begin: 0.0, end: 0.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  double _getMaxDrag(bool isLeftSwipe) {
    final actions = isLeftSwipe ? widget.leftActions : widget.rightActions;
    if (actions == null || actions.isEmpty) return 0.0;
    return actions.length * 80.0; // 80px per action button
  }

  List<SwipeAction>? _getActiveActions() {
    if (_dragOffset > 0) {
      return widget.leftActions;
    } else if (_dragOffset < 0) {
      return widget.rightActions;
    }
    return null;
  }

  void _handleDragStart(DragStartDetails details) {
    setState(() {
      _isDragging = true;
    });
  }

  void _handleDragUpdate(DragUpdateDetails details) {
    final delta = details.primaryDelta!;
    final newOffset = _dragOffset + delta;

    setState(() {
      // Determine swipe direction based on current offset and delta
      if (newOffset > 0) {
        // Swiping right (left to right) - reveal left actions or activate
        if (widget.leftActions != null && widget.leftActions!.isNotEmpty) {
          final maxDrag = _getMaxDrag(true);
          _dragOffset = newOffset.clamp(0.0, maxDrag);
        } else if (widget.onSwipeRight != null) {
          // Allow right swipe for activation if no left actions
          _dragOffset = newOffset.clamp(0.0, 100.0);
        } else {
          _dragOffset = 0.0;
        }
      } else if (newOffset < 0) {
        // Swiping left (right to left) - reveal right actions
        if (widget.rightActions != null && widget.rightActions!.isNotEmpty) {
          final maxDrag = _getMaxDrag(false);
          _dragOffset = newOffset.clamp(-maxDrag, 0.0);
        } else {
          _dragOffset = 0.0;
        }
      } else {
        _dragOffset = 0.0;
      }
    });
  }

  void _handleDragEnd(DragEndDetails details) {
    final actions = _getActiveActions();
    final maxDrag = actions != null && actions.isNotEmpty
        ? actions.length * 80.0
        : (_dragOffset > 0 && widget.onSwipeRight != null ? 100.0 : 0.0);
    final threshold = maxDrag * widget.threshold;

    if (_dragOffset.abs() > threshold) {
      // Swipe was significant enough
      if (_dragOffset > 0 && widget.onSwipeRight != null && (widget.leftActions == null || widget.leftActions!.isEmpty)) {
        // Right swipe for activation (only if no left actions)
        widget.onSwipeRight!();
        _resetPosition();
      } else if (_dragOffset.abs() >= maxDrag * 0.8 && actions != null) {
        // Keep actions revealed - animate to final position
        final targetValue = _dragOffset.abs() / maxDrag;
        _controller.value = targetValue;
      } else {
        // Snap back
        _resetPosition();
      }
    } else {
      // Snap back
      _resetPosition();
    }

    setState(() {
      _isDragging = false;
    });
  }

  void _resetPosition() {
    _controller.animateTo(0.0).then((_) {
      if (mounted) {
        setState(() {
          _dragOffset = 0.0;
        });
      }
    });
  }

  void _handleActionTap(SwipeAction action) {
    action.onTap();
    if (widget.dismissOnAction) {
      _resetPosition();
    }
  }

  @override
  Widget build(BuildContext context) {
    final actions = _getActiveActions();
    final hasRightSwipe = widget.onSwipeRight != null && _dragOffset > 0;

    return GestureDetector(
      onHorizontalDragStart: _handleDragStart,
      onHorizontalDragUpdate: _handleDragUpdate,
      onHorizontalDragEnd: _handleDragEnd,
      child: Stack(
        children: [
          // Action buttons (behind)
          if (actions != null && actions.isNotEmpty)
            Positioned.fill(
              child: Row(
                mainAxisAlignment: _dragOffset > 0
                    ? MainAxisAlignment.start
                    : MainAxisAlignment.end,
                children: actions.map((action) {
                  return Container(
                    width: 80,
                    color: action.color,
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () => _handleActionTap(action),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(action.icon, color: Colors.white),
                            const SizedBox(height: 4),
                            Text(
                              action.label,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          // Main content (on top)
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              double offset;
              if (_isDragging) {
                // Use actual drag offset during dragging
                offset = _dragOffset;
              } else {
                // Use animation value when not dragging
                final actions = _getActiveActions();
                final maxDrag = actions != null && actions.isNotEmpty
                    ? actions.length * 80.0
                    : 0.0;
                offset = _animation.value * maxDrag * (_dragOffset < 0 ? -1 : 1);
              }

              return Transform.translate(
                offset: Offset(offset, 0),
                child: Container(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: widget.child,
                ),
              );
            },
          ),
          // Right swipe indicator (for activation)
          if (hasRightSwipe && _dragOffset > 50)
            Positioned(
              left: 0,
              top: 0,
              bottom: 0,
              child: Container(
                width: _dragOffset.clamp(0.0, 100.0),
                color: Theme.of(context).colorScheme.primary.withOpacity(0.3),
                child: Center(
                  child: Icon(
                    Icons.play_arrow,
                    color: Theme.of(context).colorScheme.primary,
                    size: 32,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

