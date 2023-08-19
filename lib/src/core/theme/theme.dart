import 'package:flutter/material.dart';

/// Light theme of this application.
final $lightThemeData = ThemeData(
  colorScheme: lightColorScheme,
  brightness: Brightness.light,
  useMaterial3: true,
);

/// Dark theme of this application.
final $darkThemeData = ThemeData(
  colorScheme: darkColorScheme,
  brightness: Brightness.dark,
  useMaterial3: true,
);

final lightColorScheme = ColorScheme.fromSeed(seedColor: Colors.black);

final darkColorScheme = ColorScheme.fromSeed(
  seedColor: Colors.black,
  brightness: Brightness.dark,
);

extension ThemeX on BuildContext {
  /// Returns [ColorScheme] from [BuildContext]
  ColorScheme get colors => Theme.of(this).colorScheme;

  /// Returns [TextTheme] from [BuildContext].
  TextTheme get fonts => Theme.of(this).textTheme;
}
