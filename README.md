# Flutter Template

This is a starter project, which implements clean architecture in flutter with a very simple example.

## Third party packages used
- flutter_bloc (for state management)
- get_it (service locator)
- injectable (in order to implement DI)

## Usefull commands
Check for outdated flutter packages in your pubspec.yaml
  `flutter pub outdated`

Update your packages to their latest available versions
  `flutter pub upgrade`

Generate localizations
  `flutter gen-l10n`

Generate .g files
  `flutter pub run build_runner build --delete-conflicting-outputs`
