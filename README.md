# flutter_architecture

A new Flutter project.

## Running The application with diff flavous
```
#Run app in `dev` environment
flutter run -t lib/main_dev.dart  --flavor=dev

# Run app in debug mode (Picks up debug signing config)
flutter run -t lib/main_dev.dart  --debug --flavor=dev

# Run app in release mode (Picks up release signing config)
flutter run -t lib/main_dev.dart  --release --flavor=dev

# Create appBundle for Android platform. Runs in release mode by default.
flutter build appbundle -t lib/main_dev.dart  --flavor=dev

# Create APK for dev flavor. Runs in release mode by default.
flutter build apk -t lib/main_dev.dart  --flavor=dev
```
## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
