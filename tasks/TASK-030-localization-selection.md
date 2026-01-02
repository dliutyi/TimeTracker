# TASK-030: Localization Selection

## Phase
Phase 4: UI Screens & Core Features

## Dependencies
TASK-028, TASK-015

## Description
Implement localization selection functionality. Allow users to change the app language from the settings. Persist the selection and apply it throughout the app.

## Expected Outcome
- Localization selection works
- Language can be changed from settings
- Selection persists across app restarts
- App language updates immediately
- All UI strings update
- Defaults to system locale if not set

## Implementation Details
1. Implement language selection:
   - Connect settings UI to locale provider
   - Handle language selection
   - Update app locale
   - Reload UI strings

2. Persist language selection:
   - Save to settings repository
   - Load on app start
   - Apply saved language

3. Implement locale provider:
   - Add language selection state
   - Update locale based on selection
   - Notify listeners of changes
   - Handle system locale default

4. Update app localization:
   - Rebuild UI with new locale
   - Update all strings
   - Handle RTL languages
   - Update date/time formats

5. Handle edge cases:
   - Language not available
   - System locale changes
   - App restart
   - Missing translations

6. Test all languages:
   - Verify all 20 languages work
   - Test RTL languages
   - Test text overflow
   - Test date/time formatting

## Testing Approach
- Test language selection
- Test language persistence
- Test all supported languages
- Test RTL languages
- Test system locale default
- Test missing translations
- Test on different devices

## Notes
- Ensure all strings are translated
- Handle fallback to English
- Test with long strings
- Consider text direction changes

