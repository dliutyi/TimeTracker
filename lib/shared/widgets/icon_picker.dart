import 'package:flutter/material.dart';
import 'package:yudi_time_tracker/generated/l10n/app_localizations.dart';
import '../../core/constants/icons.dart';
import '../../app/theme/app_theme.dart';

/// Icon picker widget that allows selection of icons or emojis
class IconPicker extends StatefulWidget {
  final IconData? selectedIcon;
  final String? selectedEmoji;
  final bool allowEmoji;
  final ValueChanged<IconData?>? onIconSelected;
  final ValueChanged<String?>? onEmojiSelected;

  const IconPicker({
    super.key,
    this.selectedIcon,
    this.selectedEmoji,
    this.allowEmoji = true,
    this.onIconSelected,
    this.onEmojiSelected,
  });

  /// Show icon picker as bottom sheet
  static Future<IconData?> showIconPicker(
    BuildContext context, {
    IconData? selectedIcon,
  }) async {
    IconData? result;
    await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder:
          (context) => _IconPickerSheet(
            selectedIcon: selectedIcon,
            onIconSelected: (icon) {
              result = icon;
              Navigator.of(context).pop();
            },
          ),
    );
    return result;
  }

  /// Show emoji picker as bottom sheet
  static Future<String?> showEmojiPicker(
    BuildContext context, {
    String? selectedEmoji,
  }) async {
    String? result;
    await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder:
          (context) => _EmojiPickerSheet(
            selectedEmoji: selectedEmoji,
            onEmojiSelected: (emoji) {
              result = emoji;
              Navigator.of(context).pop();
            },
          ),
    );
    return result;
  }

  @override
  State<IconPicker> createState() => _IconPickerState();
}

class _IconPickerState extends State<IconPicker>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: widget.allowEmoji ? 2 : 1,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (widget.allowEmoji)
          TabBar(
            controller: _tabController,
            tabs: [Tab(text: l10n.icons), Tab(text: l10n.emojis)],
          ),
        SizedBox(
          height: 400,
          child: TabBarView(
            controller: _tabController,
            children: [
              _IconGrid(
                selectedIcon: widget.selectedIcon,
                onIconSelected: widget.onIconSelected ?? (_) {},
              ),
              if (widget.allowEmoji)
                _EmojiGrid(
                  selectedEmoji: widget.selectedEmoji,
                  onEmojiSelected: widget.onEmojiSelected ?? (_) {},
                ),
            ],
          ),
        ),
      ],
    );
  }
}

class _IconPickerSheet extends StatelessWidget {
  final IconData? selectedIcon;
  final ValueChanged<IconData?> onIconSelected;

  const _IconPickerSheet({
    required this.selectedIcon,
    required this.onIconSelected,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: theme.scaffoldBackgroundColor,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(AppTheme.radiusXL),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsets.only(top: AppTheme.spacingM),
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: theme.colorScheme.onSurfaceVariant,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppTheme.spacingM),
            child: Text(l10n.selectIcon, style: theme.textTheme.titleLarge),
          ),
          SizedBox(
            height: 400,
            child: _IconGrid(
              selectedIcon: selectedIcon,
              onIconSelected: onIconSelected,
            ),
          ),
        ],
      ),
    );
  }
}

class _EmojiPickerSheet extends StatelessWidget {
  final String? selectedEmoji;
  final ValueChanged<String?> onEmojiSelected;

  const _EmojiPickerSheet({
    required this.selectedEmoji,
    required this.onEmojiSelected,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    return Container(
      decoration: BoxDecoration(
        color: theme.scaffoldBackgroundColor,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(AppTheme.radiusXL),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsets.only(top: AppTheme.spacingM),
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: theme.colorScheme.onSurfaceVariant,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppTheme.spacingM),
            child: Text(l10n.selectEmoji, style: theme.textTheme.titleLarge),
          ),
          SizedBox(
            height: 400,
            child: _EmojiGrid(
              selectedEmoji: selectedEmoji,
              onEmojiSelected: onEmojiSelected,
            ),
          ),
        ],
      ),
    );
  }
}

class _IconGrid extends StatelessWidget {
  final IconData? selectedIcon;
  final ValueChanged<IconData?> onIconSelected;

  const _IconGrid({required this.selectedIcon, required this.onIconSelected});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GridView.builder(
      padding: const EdgeInsets.all(AppTheme.spacingM),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 6,
        crossAxisSpacing: AppTheme.spacingS,
        mainAxisSpacing: AppTheme.spacingS,
      ),
      itemCount: AppIcons.defaultIcons.length,
      itemBuilder: (context, index) {
        final icon = AppIcons.defaultIcons[index];
        final isSelected =
            selectedIcon != null &&
            icon.codePoint == selectedIcon!.codePoint &&
            icon.fontFamily == selectedIcon!.fontFamily;

        return Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () => onIconSelected(icon),
            borderRadius: BorderRadius.circular(AppTheme.radiusM),
            child: Container(
              decoration: BoxDecoration(
                color:
                    isSelected
                        ? theme.colorScheme.primary.withOpacity(0.2)
                        : Colors.transparent,
                borderRadius: BorderRadius.circular(AppTheme.radiusM),
                border:
                    isSelected
                        ? Border.all(color: theme.colorScheme.primary, width: 2)
                        : null,
              ),
              child: Icon(
                icon,
                color:
                    isSelected
                        ? theme.colorScheme.primary
                        : theme.colorScheme.onSurface,
              ),
            ),
          ),
        );
      },
    );
  }
}

class _EmojiGrid extends StatelessWidget {
  final String? selectedEmoji;
  final ValueChanged<String?> onEmojiSelected;

  const _EmojiGrid({
    required this.selectedEmoji,
    required this.onEmojiSelected,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GridView.builder(
      padding: const EdgeInsets.all(AppTheme.spacingM),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 8,
        crossAxisSpacing: AppTheme.spacingS,
        mainAxisSpacing: AppTheme.spacingS,
      ),
      itemCount: AppIcons.emojis.length,
      itemBuilder: (context, index) {
        final emoji = AppIcons.emojis[index];
        final isSelected = selectedEmoji == emoji;

        return Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () => onEmojiSelected(emoji),
            borderRadius: BorderRadius.circular(AppTheme.radiusM),
            child: Container(
              decoration: BoxDecoration(
                color:
                    isSelected
                        ? theme.colorScheme.primary.withOpacity(0.2)
                        : Colors.transparent,
                borderRadius: BorderRadius.circular(AppTheme.radiusM),
                border:
                    isSelected
                        ? Border.all(color: theme.colorScheme.primary, width: 2)
                        : null,
              ),
              alignment: Alignment.center,
              child: Text(emoji, style: const TextStyle(fontSize: 24)),
            ),
          ),
        );
      },
    );
  }
}
