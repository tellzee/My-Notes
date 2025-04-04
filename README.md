# My Notes

A simple and efficient note-taking app built with Flutter, designed for lightweight performance and local storage.

## Development Environment

### Current Setup
- Development PC: Windows 10 (Non-admin access)
- Testing Device: Redmi phone via ADB
- ADB Device ID: 1b2943dc
- Flutter SDK Version: ^3.7.2

### Development Constraints
- Limited admin access on development PC
- Reliance on ADB for testing
- Need to maintain lightweight dependencies

## Project Structure

### Key Dependencies
```yaml
dependencies:
  shared_preferences: ^2.2.2
  sqflite: ^2.3.2
  path: ^1.8.3
  intl: ^0.19.0
  flutter_slidable: ^3.0.1
  path_provider: ^2.1.2
```

### Key Features
1. Create, edit, and delete notes
2. Local storage using SQLite
3. Dark/Light theme support with persistence
4. Adaptive app icon
5. Modern Material 3 UI design

## Development Commands

### Basic Commands
```bash
# Clean and rebuild
flutter clean
flutter pub get

# Run on specific device
flutter run -d 1b2943dc

# Build release APK
flutter build apk --release
```

### ADB Commands
```bash
# Check connected devices
adb devices

# Install APK
adb -s 1b2943dc install build/app/outputs/flutter-apk/app-release.apk

# Pull files from device
adb -s 1b2943dc pull /path/on/device /path/on/pc
```

## Future Development Considerations

### Potential Enhancements
1. Note Categories/Tags
2. Search functionality
3. Note sharing capabilities
4. Rich text formatting
5. Cloud backup options
6. Export/Import functionality

### Technical Debt & Optimization Areas
1. Implement proper error handling
2. Add loading states
3. Optimize SQLite queries
4. Add unit and widget tests
5. Implement proper state management solution
6. Add offline-first architecture

### Development Guidelines
1. Keep dependencies minimal due to environment constraints
2. Test thoroughly on target device before commits
3. Maintain backwards compatibility with existing data
4. Follow Material 3 design guidelines
5. Prioritize app performance and startup time

## Build and Release Process

### Release Checklist
1. Update version in pubspec.yaml
2. Test on target device
3. Check app icon and branding
4. Verify dark/light theme
5. Test data persistence
6. Build release APK
7. Backup database schema

### Known Issues
1. Limited admin access requires alternative solutions for some development tools
2. Need to maintain ADB connection for testing
3. Consider device-specific optimizations for Redmi phones

## Maintenance Notes

### Database
- Using SQLite for local storage
- Current schema supports basic note operations
- Consider migration strategy for future schema changes

### Theme
- Supports system, light, and dark themes
- Theme preference persisted using SharedPreferences
- Uses Material 3 color scheme

### Assets
- App icon located in assets/icon/
- Adaptive icon support for Android 8.0+
- White background for launcher icon

## Security Considerations
1. All data stored locally
2. No sensitive permissions required
3. No network operations currently implemented
4. SQLite database is private to app

## Contact & Support
[Add your contact information here]

## License
[Add your chosen license here]
