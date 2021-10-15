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

## Issues

1. How to set status bar color if using sliver app bar - [Solution on StackOverflow](https://stackoverflow.com/questions/69568829/how-to-set-status-bar-color-if-using-sliver-app-bar)
