# TASK-009: Theme & Design System

## Phase
Phase 3: Shared Components & Utilities

## Dependencies
TASK-003

## Description
Create a comprehensive theme and design system for the app. Implement light and dark themes with support for system preference. Define color schemes, typography, spacing, and other design tokens.

## Expected Outcome
- Complete theme system implemented
- Light and dark themes available
- System theme detection working
- Design tokens defined (colors, typography, spacing)
- Theme can be switched dynamically
- Apple-inspired liquid glass aesthetic for tab bar

## Implementation Details
1. Create theme configuration (`lib/app/theme/app_theme.dart`):
   - Define color schemes for light and dark
   - Define typography styles
   - Define spacing constants
   - Define border radius, shadows, etc.

2. Create theme provider using Riverpod:
   - Light theme
   - Dark theme
   - Automatic (system) theme
   - Theme switching logic

3. Implement liquid glass tab bar styling:
   - Glass morphism effects
   - Blur effects
   - Smooth transitions
   - Modern Apple-inspired design

4. Create theme-aware widgets:
   - Custom colors
   - Text styles
   - Button styles
   - Card styles

5. Integrate theme with Material/Cupertino theming

## Testing Approach
- Test theme switching
- Verify colors in both themes
- Test on different devices
- Verify system theme detection
- Test tab bar appearance

## Notes
- Ensure sufficient contrast for accessibility
- Test on both Android and iOS
- Consider platform-specific design guidelines
- Make theme easily extensible

