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
  final IconData?
  rightSwipeIcon; // Icon for right swipe activation (e.g., stop, play)
  final Color? baseColor; // Base color of the item for gradual color change
  final Color? activationColor; // Color when activation threshold is reached
  final Color? iconColor; // Color for the right swipe icon
  final double radius;
  final double threshold;
  final bool dismissOnAction;

  const SwipeableItem({
    super.key,
    required this.child,
    this.leftActions,
    this.rightActions,
    this.onSwipeRight,
    this.rightSwipeIcon,
    this.baseColor,
    this.activationColor,
    this.iconColor,
    this.radius = AppTheme.radiusM,
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
  bool _actionsRevealed = false;
  static const double _activationThreshold =
      80.0; // Pixels to pull for activation

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: AppTheme.animationMedium,
    );
    _animation = Tween<double>(
      begin: 0.0,
      end: 0.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  double _getMaxDrag(bool isLeftSwipe) {
    final actions = isLeftSwipe ? widget.leftActions : widget.rightActions;
    if (actions == null || actions.isEmpty) return 0.0;
    return actions.length * 60.0; // 60px per action button (smaller)
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
      if (newOffset > 0) {
        // Swiping right (left to right) - only for activation
        if (widget.onSwipeRight != null) {
          // Allow right swipe for activation only
          _dragOffset = newOffset.clamp(0.0, _activationThreshold);
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
    setState(() {
      _isDragging = false;
    });

    if (_dragOffset > 0 && widget.onSwipeRight != null) {
      // Right swipe for activation
      if (_dragOffset >= _activationThreshold * 0.8) {
        // Pulled far enough - activate
        widget.onSwipeRight!();
        _resetPosition();
      } else {
        // Not far enough - snap back
        _resetPosition();
      }
    } else if (_dragOffset < 0 &&
        widget.rightActions != null &&
        widget.rightActions!.isNotEmpty) {
      // Left swipe to reveal actions
      final maxDrag = _getMaxDrag(false);
      final threshold = maxDrag * widget.threshold;

      if (_dragOffset.abs() > threshold) {
        // Swipe was significant enough - snap to fully revealed
        _actionsRevealed = true;
        _dragOffset = -maxDrag;
        _controller.value = 1.0; // Set immediately to 1.0 to maintain position
      } else {
        // Not far enough - snap back to default
        _actionsRevealed = false;
        _resetPosition();
      }
    } else {
      // Snap back
      _resetPosition();
    }
  }

  void _resetPosition() {
    _actionsRevealed = false;
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
    final rightActions = widget.rightActions;
    final maxRightDrag =
        rightActions != null && rightActions.isNotEmpty
            ? rightActions.length * 60.0
            : 0.0;

    return Stack(
      children: [
        // Right action buttons (behind, revealed on left swipe)
        if (rightActions != null && rightActions.isNotEmpty)
          Positioned.fill(
            child: IgnorePointer(
              // Ignore pointer events only when actions are not revealed
              ignoring: !_actionsRevealed,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children:
                    rightActions.map((action) {
                      return Container(
                        width: 60,
                        margin: const EdgeInsets.only(
                          right: AppTheme.spacingXS,
                          top: AppTheme.spacingXS,
                          bottom: AppTheme.spacingXS,
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () => _handleActionTap(action),
                            borderRadius: BorderRadius.zero,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.zero,
                              ),
                              child: Center(
                                child: Icon(
                                  action.icon,
                                  color: action.color,
                                  size: 24,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
              ),
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
              // When not dragging, use animation for smooth transitions
              if (_actionsRevealed) {
                // Actions are revealed - maintain position at full offset
                offset = -maxRightDrag;
              } else {
                // Use animation for snap back
                offset = _animation.value * _dragOffset;
              }
            }

            // Calculate color interpolation for gradual change
            Color? itemColor;
            final currentHasRightSwipe =
                widget.onSwipeRight != null && _dragOffset > 0;
            if (currentHasRightSwipe &&
                widget.baseColor != null &&
                widget.activationColor != null) {
              final progress = (_dragOffset / _activationThreshold).clamp(
                0.0,
                1.0,
              );
              itemColor = Color.lerp(
                widget.baseColor,
                widget.activationColor,
                progress,
              );
            } else if (widget.baseColor != null) {
              // When not swiping, use baseColor as background
              itemColor = widget.baseColor;
            }

            return Transform.translate(
              offset: Offset(offset, 0),
              child: GestureDetector(
                onTap: () {
                  // Tap on main content to close revealed actions
                  if (_actionsRevealed) {
                    _resetPosition();
                  }
                },
                onHorizontalDragStart: _handleDragStart,
                onHorizontalDragUpdate: _handleDragUpdate,
                onHorizontalDragEnd: _handleDragEnd,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(widget.radius),
                  child: Container(color: itemColor, child: widget.child),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
