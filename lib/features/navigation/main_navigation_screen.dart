import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../app/theme/liquid_glass_tab_bar.dart';
import '../../core/services/session_service.dart';
import '../tasks/list_tasks_screen.dart';
import '../sessions/active_task_screen.dart';
import '../criteria/list_criteria_screen.dart';
import '../settings/settings_screen.dart';
import '../statistics/statistics_screen.dart';

/// Tab indices
enum MainTab {
  activeTask(0),
  listOfTasks(1),
  statistics(2),
  listOfCriteria(3),
  settings(4);

  const MainTab(this.tabIndex);
  final int tabIndex;
}

/// Main navigation screen with bottom tab bar
class MainNavigationScreen extends ConsumerStatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  ConsumerState<MainNavigationScreen> createState() =>
      MainNavigationScreenState();
}

class MainNavigationScreenState extends ConsumerState<MainNavigationScreen> {
  int _currentIndex = MainTab.listOfTasks.index;
  bool _hasCheckedInitialTab = false;

  @override
  void initState() {
    super.initState();
    _determineInitialTab();
  }

  Future<void> _determineInitialTab() async {
    // Wait a bit for active session to load from database
    await Future.delayed(const Duration(milliseconds: 200));
    
    if (!mounted) return;
    
    // Check if there's an active session
    final activeSession = ref.read(activeSessionProvider);
    
    if (mounted) {
      final targetIndex = activeSession != null
          ? MainTab.activeTask.tabIndex
          : MainTab.listOfTasks.tabIndex;
      
      setState(() {
        _currentIndex = targetIndex;
        _hasCheckedInitialTab = true;
      });
    }
  }

  /// Switch to a specific tab programmatically
  void switchToTab(int index) {
    if (mounted && _currentIndex != index) {
      setState(() {
        _currentIndex = index;
      });
    }
  }

  /// Get the current state (for accessing from child widgets)
  static MainNavigationScreenState? of(BuildContext context) {
    return context.findAncestorStateOfType<MainNavigationScreenState>();
  }

  void _onTabTapped(int index) {
    // Prevent navigation to Active Task tab if there's no active session
    if (index == MainTab.activeTask.tabIndex) {
      final activeSession = ref.read(activeSessionProvider);
      if (activeSession == null) {
        // Don't allow navigation to Active Task tab when no active session
        return;
      }
    }
    
    // Update state
    if (_currentIndex != index) {
      setState(() {
        _currentIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final activeSession = ref.watch(activeSessionProvider);

    // If active session ends while on active task tab, switch to list
    if (_hasCheckedInitialTab && 
        activeSession == null && 
        _currentIndex == MainTab.activeTask.tabIndex) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) {
          switchToTab(MainTab.listOfTasks.tabIndex);
        }
      });
    }

    // Build tab items
    final tabItems = [
      BottomNavigationBarItem(
        icon: const Icon(Icons.play_circle_outline),
        activeIcon: const Icon(Icons.play_circle),
        label: l10n.activeTask,
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.list_outlined),
        activeIcon: const Icon(Icons.list),
        label: l10n.listOfTasks,
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.bar_chart_outlined),
        activeIcon: const Icon(Icons.bar_chart),
        label: l10n.statistics,
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.rule_outlined),
        activeIcon: const Icon(Icons.rule),
        label: l10n.listOfCriteria,
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.settings_outlined),
        activeIcon: const Icon(Icons.settings),
        label: l10n.settings,
      ),
    ];

    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          const ActiveTaskScreen(),
          const ListTasksScreen(),
          const StatisticsScreen(),
          const ListCriteriaScreen(),
          const SettingsScreen(),
        ],
      ),
      bottomNavigationBar: LiquidGlassTabBar(
        items: tabItems,
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        disabledIndices: activeSession == null
            ? {MainTab.activeTask.tabIndex}
            : null,
      ),
    );
  }
}

