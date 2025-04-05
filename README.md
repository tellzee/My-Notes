# My Notes

A simple and efficient note-taking app built with Flutter.

## Features

- 📝 Create, edit, and delete notes
- 🔍 Search notes by title or content
- 📋 Copy notes to clipboard
- 📤 Share notes with other apps
- 🌓 Dark/Light theme support
- 🔄 Pull to refresh
- 💾 Local storage using SQLite
- 🎨 Material Design 3

## Screenshots

[Add screenshots here]

## Getting Started

### Prerequisites

- Flutter SDK (version 3.7.2 or higher)
- Dart SDK
- Android Studio / VS Code
- Git

### Installation

1. Clone the repository:
```bash
git clone https://github.com/tellzee/My-Notes.git
```

2. Navigate to the project directory:
```bash
cd My-Notes
```

3. Install dependencies:
```bash
flutter pub get
```

4. Run the app:
```bash
flutter run
```

## Usage

- Tap the + button to create a new note
- Tap a note to edit it
- Swipe left on a note to delete it
- Use the search icon to find notes
- Tap the theme icon to switch between dark and light modes
- Use the share button to share notes
- Use the copy button to copy note content

## Project Structure

```
lib/
├── main.dart              # App entry point
├── models/
│   └── note.dart         # Note data model
├── screens/
│   ├── home_screen.dart  # Main screen with note list
│   └── note_edit_screen.dart  # Note creation/editing screen
└── services/
    └── database_service.dart  # Database operations
```

## Dependencies

- `shared_preferences`: For theme preference storage
- `sqflite`: For local database
- `path`: For file path operations
- `intl`: For date formatting
- `flutter_slidable`: For swipe actions
- `path_provider`: For file system access
- `share_plus`: For sharing notes

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- Flutter team for the amazing framework
- All contributors and users of this app

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

# Testing credentials

## Development Roadmap

### Phase 1: Core Enhancements (Next 3 Months)
- [ ] **Note Organization**
  - Add categories/tags system
  - Implement note sorting options
  - Add favorites/starred notes
  - Create note folders/collections

- [ ] **Rich Text Support**
  - Basic text formatting (bold, italic, underline)
  - Text alignment options
  - Bullet points and numbered lists
  - Text color and highlight options

- [ ] **Search Improvements**
  - Advanced search filters
  - Search within specific categories
  - Search history
  - Search suggestions

### Phase 2: User Experience (3-6 Months)
- [ ] **UI/UX Enhancements**
  - Custom themes and color schemes
  - Grid/List view toggle
  - Note preview cards
  - Gesture controls
  - Animations and transitions

- [ ] **Data Management**
  - Note export/import (JSON, PDF)
  - Automatic backups
  - Note version history
  - Recycle bin for deleted notes

- [ ] **Accessibility**
  - Screen reader support
  - High contrast mode
  - Font size adjustment
  - Keyboard shortcuts

### Phase 3: Advanced Features (6-12 Months)
- [ ] **Cloud Integration**
  - Google Drive backup
  - Dropbox integration
  - Cross-device sync
  - Offline mode

- [ ] **Collaboration**
  - Share notes with other users
  - Real-time collaboration
  - Comments and discussions
  - Permission management

- [ ] **Smart Features**
  - AI-powered note organization
  - Smart tags and categories
  - Note linking
  - Templates system

### Phase 4: Platform Expansion (12+ Months)
- [ ] **Multi-platform Support**
  - Web version
  - Desktop applications
  - iOS optimization
  - Wear OS support

- [ ] **Integration**
  - Calendar integration
  - Task management
  - Email integration
  - API for third-party apps

### Technical Improvements
- [ ] **Performance**
  - Database optimization
  - Lazy loading
  - Caching system
  - Memory management

- [ ] **Security**
  - Note encryption
  - Biometric authentication
  - Secure sharing
  - Privacy controls

- [ ] **Testing & Quality**
  - Unit tests
  - Integration tests
  - UI tests
  - Performance testing

### Maintenance & Support
- [ ] **Documentation**
  - API documentation
  - User guides
  - Developer documentation
  - Troubleshooting guides

- [ ] **Community**
  - Feature requests system
  - Bug reporting
  - User feedback
  - Community contributions

## How to Contribute

We welcome contributions to any of these roadmap items! Here's how you can help:

1. **Feature Development**
   - Pick an item from the roadmap
   - Create a new branch
   - Implement the feature
   - Submit a pull request

2. **Bug Fixes**
   - Report bugs in the issues section
   - Fix existing bugs
   - Submit pull requests

3. **Documentation**
   - Improve existing documentation
   - Add new guides
   - Translate documentation

4. **Testing**
   - Test new features
   - Report issues
   - Suggest improvements

## Getting Started with Development

1. **Setup Development Environment**
```bash
# Clone the repository
git clone https://github.com/tellzee/My-Notes.git

# Install dependencies
flutter pub get

# Run the app
flutter run
```

2. **Follow Development Guidelines**
   - Follow Flutter best practices
   - Write clean, documented code
   - Add tests for new features
   - Update documentation

3. **Submit Changes**
   - Create a new branch
   - Make your changes
   - Submit a pull request
   - Address review comments
