import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeIn,
      ),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.3),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeOutCubic,
      ),
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
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              theme.colorScheme.primary,
              theme.colorScheme.secondary,
            ],
          ),
        ),
        child: SafeArea(
          child: FadeTransition(
            opacity: _fadeAnimation,
            child: SlideTransition(
              position: _slideAnimation,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(AppTheme.spacingXL),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // App Logo/Icon
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.onPrimary,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.2),
                              blurRadius: 20,
                              offset: const Offset(0, 10),
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.access_time,
                          size: 64,
                          color: theme.colorScheme.primary,
                        ),
                      ),
                      const SizedBox(height: AppTheme.spacingXXL),
                      
                      // App Name
                      Text(
                        l10n.appName,
                        style: theme.textTheme.displayMedium?.copyWith(
                          color: theme.colorScheme.onPrimary,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: AppTheme.spacingL),
                      
                      // Description
                      Text(
                        l10n.welcomeDescription,
                        style: theme.textTheme.bodyLarge?.copyWith(
                          color: theme.colorScheme.onPrimary.withValues(alpha: 0.9),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: AppTheme.spacingXXL),
                      
                      // Continue Button
                      FadeTransition(
                        opacity: _fadeAnimation,
                        child: ElevatedButton(
                          onPressed: _handleContinue,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: theme.colorScheme.onPrimary,
                            foregroundColor: theme.colorScheme.primary,
                            padding: const EdgeInsets.symmetric(
                              horizontal: AppTheme.spacingXL,
                              vertical: AppTheme.spacingM,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                AppTheme.radiusRound,
                              ),
                            ),
                            elevation: AppTheme.elevationHigh,
                          ),
                          child: Text(
                            l10n.continueButton,
                            style: theme.textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
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

