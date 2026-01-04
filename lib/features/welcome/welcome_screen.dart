import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:yudi_time_tracker/generated/l10n/app_localizations.dart';
import 'package:yudi_time_tracker/shared/widgets/swipeable_item.dart';
import '../../app/theme/app_theme.dart';
import '../../core/repositories/repository_providers.dart';

/// Key for storing welcome screen shown state
const String _welcomeShownKey = 'welcome_shown';

/// Provider to check if welcome screen has been shown
final welcomeShownProvider = FutureProvider<bool>((ref) async {
  final settingsRepository = ref.watch(settingsRepositoryProvider);
  final welcomeShown = await settingsRepository.getSetting(_welcomeShownKey);
  return welcomeShown == 'true';
});

/// Welcome screen widget
class WelcomeScreen extends ConsumerStatefulWidget {
  const WelcomeScreen({super.key});

  @override
  ConsumerState<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends ConsumerState<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: AppTheme.animationSlow,
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.3),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeOutCubic),
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Future<void> _handleContinue() async {
    final settingsRepository = ref.read(settingsRepositoryProvider);
    await settingsRepository.setSetting(_welcomeShownKey, 'true');

    if (mounted) {
      // Invalidate provider to trigger rebuild
      ref.invalidate(welcomeShownProvider);
      // Navigate to main screen
      if (context.mounted) {
        context.go('/main');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      body: SafeArea(
        child: FadeTransition(
          opacity: _fadeAnimation,
          child: SlideTransition(
            position: _slideAnimation,
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(AppTheme.spacingXL),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // App Logo/Icon
                        Image.asset(
                          'assets/images/yudi_tt_logo_3.png',
                          width: 240,
                          height: 240,
                        ),
                        const SizedBox(height: AppTheme.spacingXS),

                        // App Name
                        Text(
                          l10n.appName,
                          style: theme.textTheme.displayMedium?.copyWith(
                            color: theme.colorScheme.onPrimary,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'ShantellSans',
                            shadows: [
                              Shadow(
                                offset: const Offset(-2, 2),
                                blurRadius: 5,
                                color: theme.colorScheme.onPrimary.withValues(
                                  alpha: 0.3,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: AppTheme.spacingXXL),

                        // Description
                        Text(
                          l10n.welcomeDescription,
                          style: theme.textTheme.titleMedium?.copyWith(
                            color: theme.colorScheme.onPrimary.withValues(
                              alpha: 0.9,
                            ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: AppTheme.spacingXXL),
                      ],
                    ),
                  ),
                ),
                // Continue Button
                FadeTransition(
                  opacity: _fadeAnimation,
                  child: SwipeableItem(
                    rightActions: [],
                    onSwipeRight: () => _handleContinue(),
                    rightSwipeIcon: Icons.stop, // Stop icon for right swipe
                    baseColor:
                        theme
                            .colorScheme
                            .primary, // Base color for gradual change
                    activationColor:
                        theme
                            .colorScheme
                            .secondary, // Darker color when threshold reached
                    iconColor:
                        theme
                            .colorScheme
                            .onPrimary, // Icon color for visibility
                    radius: 0,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color:
                            Colors
                                .transparent, // Let SwipeableItem handle background
                        borderRadius: BorderRadius.zero, // No round corners
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppTheme.spacingL,
                        vertical: AppTheme.spacingL,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        l10n.swipeToStart,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'ShantellSans',
                          color: theme.colorScheme.onPrimary,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
