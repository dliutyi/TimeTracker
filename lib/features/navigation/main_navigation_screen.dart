import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../app/theme/liquid_glass_tab_bar.dart';
import '../../core/services/session_service.dart';
import '../tasks/list_tasks_screen.dart';
import '../sessions/active_task_screen.dart';

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

class MainNavigationScreenState
    extends ConsumerState<MainNavigationScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _currentIndex = MainTab.listOfTasks.index;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 5,
      vsync: this,
      initialIndex: _currentIndex,
    );
    _tabController.addListener(_onTabChanged);
    _determineInitialTab();
  }

  Future<void> _determineInitialTab() async {
    // Wait a bit for active session to load
    await Future.delayed(const Duration(milliseconds: 100));
    
    // Check if there's an active session
    final activeSession = ref.read(activeSessionProvider);
    
    if (mounted) {
      final targetIndex = activeSession != null
          ? MainTab.activeTask.tabIndex
          : MainTab.listOfTasks.tabIndex;
      
      setState(() {
        _currentIndex = targetIndex;
        if (_tabController.index != targetIndex) {
          _tabController.index = targetIndex;
        }
      });
    }
  }

  /// Switch to a specific tab programmatically
  void switchToTab(int index) {
    if (mounted && _currentIndex != index) {
      setState(() {
        _currentIndex = index;
        _tabController.animateTo(index);
      });
    }
  }

  /// Get the current state (for accessing from child widgets)
  static MainNavigationScreenState? of(BuildContext context) {
    return context.findAncestorStateOfType<MainNavigationScreenState>();
  }

  void _onTabChanged() {
    // Update current index when tab controller changes
    if (mounted && _tabController.index != _currentIndex) {
      setState(() {
        _currentIndex = _tabController.index;
      });
    }
  }

  @override
  void dispose() {
    _tabController.removeListener(_onTabChanged);
    _tabController.dispose();
    super.dispose();
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
    
    // Update both state and controller
    if (_currentIndex != index) {
      setState(() {
        _currentIndex = index;
        _tabController.animateTo(index);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final activeSession = ref.watch(activeSessionProvider);

    // Only auto-switch to Active Task tab when session first becomes active
    // Don't force switch if user manually navigated away
    // If active session ends while on active task tab, switch to list
    if (activeSession == null && _currentIndex == MainTab.activeTask.tabIndex) {
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
          _buildPlaceholderScreen(l10n.statistics),
          _buildPlaceholderScreen(l10n.listOfCriteria),
          _buildPlaceholderScreen(l10n.settings),
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

  Widget _buildPlaceholderScreen(String title) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.construction,
            size: 64,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
          const SizedBox(height: 16),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Text(
            'Coming soon...',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
          ),
        ],
      ),
    );
  }
}

