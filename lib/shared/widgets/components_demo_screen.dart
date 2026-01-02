import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../app/theme/app_theme.dart';
import '../../app/theme/theme_mode_provider.dart';
import 'speech_text_field.dart';
import 'icon_picker.dart';
import 'confirmation_dialog.dart';
import 'swipeable_item.dart';

/// Demo screen showcasing all shared components
class ComponentsDemoScreen extends ConsumerStatefulWidget {
  const ComponentsDemoScreen({super.key});

  @override
  ConsumerState<ComponentsDemoScreen> createState() => _ComponentsDemoScreenState();
}

class _ComponentsDemoScreenState extends ConsumerState<ComponentsDemoScreen> {
  final TextEditingController _textController = TextEditingController();
  IconData? _selectedIcon;
  String? _selectedEmoji;
  int _swipeCounter = 0;

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final themeMode = ref.watch(themeModeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Components Demo'),
        actions: [
          PopupMenuButton<AppThemeMode>(
            icon: Icon(theme.brightness == Brightness.dark
                ? Icons.dark_mode
                : Icons.light_mode),
            onSelected: (mode) {
              ref.read(themeModeProvider.notifier).setThemeMode(mode);
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                value: AppThemeMode.light,
                child: Row(
                  children: [
                    const Icon(Icons.light_mode),
                    const SizedBox(width: AppTheme.spacingS),
                    const Text('Light'),
                    if (themeMode == AppThemeMode.light)
                      const Spacer()
                    else
                      const SizedBox(),
                    if (themeMode == AppThemeMode.light)
                      const Icon(Icons.check, size: 20),
                  ],
                ),
              ),
              PopupMenuItem(
                value: AppThemeMode.dark,
                child: Row(
                  children: [
                    const Icon(Icons.dark_mode),
                    const SizedBox(width: AppTheme.spacingS),
                    const Text('Dark'),
                    if (themeMode == AppThemeMode.dark)
                      const Spacer()
                    else
                      const SizedBox(),
                    if (themeMode == AppThemeMode.dark)
                      const Icon(Icons.check, size: 20),
                  ],
                ),
              ),
              PopupMenuItem(
                value: AppThemeMode.system,
                child: Row(
                  children: [
                    const Icon(Icons.brightness_auto),
                    const SizedBox(width: AppTheme.spacingS),
                    const Text('System'),
                    if (themeMode == AppThemeMode.system)
                      const Spacer()
                    else
                      const SizedBox(),
                    if (themeMode == AppThemeMode.system)
                      const Icon(Icons.check, size: 20),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppTheme.spacingM),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Theme Section
            _buildSection(
              context,
              title: 'Theme & Design System',
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(AppTheme.spacingM),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Current Theme: ${themeMode.name}',
                          style: theme.textTheme.titleMedium,
                        ),
                        const SizedBox(height: AppTheme.spacingS),
                        Text(
                          'Use the menu in the app bar to switch themes',
                          style: theme.textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: AppTheme.spacingL),

            // Speech Text Field Section
            _buildSection(
              context,
              title: 'Speech Text Field',
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(AppTheme.spacingM),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hold the microphone button to record',
                          style: theme.textTheme.bodySmall,
                        ),
                        const SizedBox(height: AppTheme.spacingM),
                        SpeechTextField(
                          label: 'Task Name',
                          hint: 'Enter task name or use microphone',
                          controller: _textController,
                          onChanged: (value) {
                            // Handle text change
                          },
                        ),
                        const SizedBox(height: AppTheme.spacingM),
                        SpeechTextField(
                          label: 'Motto',
                          hint: 'Enter motto or use microphone',
                          maxLines: 3,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: AppTheme.spacingL),

            // Icon Picker Section
            _buildSection(
              context,
              title: 'Icon Picker',
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(AppTheme.spacingM),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            if (_selectedIcon != null)
                              Icon(_selectedIcon, size: 48)
                            else if (_selectedEmoji != null)
                              Text(_selectedEmoji!, style: const TextStyle(fontSize: 48))
                            else
                              const Icon(Icons.image, size: 48),
                            const SizedBox(width: AppTheme.spacingM),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    _selectedIcon != null
                                        ? 'Icon Selected'
                                        : _selectedEmoji != null
                                            ? 'Emoji Selected'
                                            : 'No selection',
                                    style: theme.textTheme.titleMedium,
                                  ),
                                  if (_selectedIcon != null || _selectedEmoji != null)
                                    Text(
                                      'Tap buttons below to change',
                                      style: theme.textTheme.bodySmall,
                                    ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: AppTheme.spacingM),
                        Row(
                          children: [
                            Expanded(
                              child: OutlinedButton.icon(
                                onPressed: () async {
                                  final icon = await IconPicker.showIconPicker(
                                    context,
                                    selectedIcon: _selectedIcon,
                                  );
                                  if (icon != null) {
                                    setState(() {
                                      _selectedIcon = icon;
                                      _selectedEmoji = null;
                                    });
                                  }
                                },
                                icon: const Icon(Icons.palette),
                                label: const Text('Pick Icon'),
                              ),
                            ),
                            const SizedBox(width: AppTheme.spacingS),
                            Expanded(
                              child: OutlinedButton.icon(
                                onPressed: () async {
                                  final emoji = await IconPicker.showEmojiPicker(
                                    context,
                                    selectedEmoji: _selectedEmoji,
                                  );
                                  if (emoji != null) {
                                    setState(() {
                                      _selectedEmoji = emoji;
                                      _selectedIcon = null;
                                    });
                                  }
                                },
                                icon: const Icon(Icons.sentiment_satisfied),
                                label: const Text('Pick Emoji'),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: AppTheme.spacingL),

            // Confirmation Dialog Section
            _buildSection(
              context,
              title: 'Confirmation Dialogs',
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(AppTheme.spacingM),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            ConfirmationDialog.show(
                              context,
                              title: 'Warning',
                              message: 'This action cannot be undone. Are you sure you want to proceed?',
                              type: DialogType.warning,
                              primaryButtonText: 'Delete',
                            );
                          },
                          child: const Text('Show Warning Dialog'),
                        ),
                        const SizedBox(height: AppTheme.spacingS),
                        ElevatedButton(
                          onPressed: () {
                            ConfirmationDialog.show(
                              context,
                              title: 'Information',
                              message: 'This is an informational message.',
                              type: DialogType.info,
                            );
                          },
                          child: const Text('Show Info Dialog'),
                        ),
                        const SizedBox(height: AppTheme.spacingS),
                        ElevatedButton(
                          onPressed: () {
                            ConfirmationDialog.show(
                              context,
                              title: 'Confirmation',
                              message: 'Do you want to proceed with this action?',
                              type: DialogType.confirmation,
                            );
                          },
                          child: const Text('Show Confirmation Dialog'),
                        ),
                        const SizedBox(height: AppTheme.spacingS),
                        ElevatedButton(
                          onPressed: () {
                            ConfirmationDialog.show(
                              context,
                              title: 'Error',
                              message: 'An error occurred. Please try again.',
                              type: DialogType.error,
                            );
                          },
                          child: const Text('Show Error Dialog'),
                        ),
                        const SizedBox(height: AppTheme.spacingS),
                        ElevatedButton(
                          onPressed: () {
                            ConfirmationDialog.showDeleteConfirmation(
                              context,
                              title: 'Delete Task',
                              message: 'Are you sure you want to delete this task? This action cannot be undone.',
                            );
                          },
                          child: const Text('Show Delete Confirmation'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: AppTheme.spacingL),

            // Swipe Actions Section
            _buildSection(
              context,
              title: 'Swipe Actions',
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(AppTheme.spacingM),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Swipe left to reveal actions, swipe right to activate',
                          style: theme.textTheme.bodySmall,
                        ),
                        const SizedBox(height: AppTheme.spacingM),
                        SwipeableItem(
                          leftActions: [
                            SwipeAction(
                              label: 'Edit',
                              icon: Icons.edit,
                              color: theme.colorScheme.primary,
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('Edit action tapped')),
                                );
                              },
                            ),
                            SwipeAction(
                              label: 'Delete',
                              icon: Icons.delete,
                              color: theme.colorScheme.error,
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('Delete action tapped')),
                                );
                              },
                            ),
                          ],
                          rightActions: [
                            SwipeAction(
                              label: 'Disable',
                              icon: Icons.block,
                              color: Colors.orange,
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('Disable action tapped')),
                                );
                              },
                            ),
                          ],
                          onSwipeRight: () {
                            setState(() {
                              _swipeCounter++;
                            });
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Activated! Count: $_swipeCounter'),
                              ),
                            );
                          },
                          child: ListTile(
                            leading: const Icon(Icons.task),
                            title: const Text('Swipeable Task Item'),
                            subtitle: Text('Swipe counter: $_swipeCounter'),
                            trailing: const Icon(Icons.chevron_right),
                          ),
                        ),
                        const SizedBox(height: AppTheme.spacingM),
                        SwipeableItem(
                          onSwipeRight: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Item activated!')),
                            );
                          },
                          child: ListTile(
                            leading: const Icon(Icons.play_arrow),
                            title: const Text('Swipe Right to Activate'),
                            subtitle: const Text('No left actions, only right swipe'),
                            trailing: const Icon(Icons.chevron_right),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: AppTheme.spacingL),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(
    BuildContext context, {
    required String title,
    required List<Widget> children,
  }) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: theme.textTheme.titleLarge,
        ),
        const SizedBox(height: AppTheme.spacingM),
        ...children,
      ],
    );
  }
}

