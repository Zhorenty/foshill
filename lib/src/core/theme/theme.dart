import 'package:flutter/material.dart';

/// Light theme of this application.
final $lightThemeData = ThemeData(
  colorScheme: const ColorScheme.light(
    primary: Color(0xFFFFFFFF),
  ),
  brightness: Brightness.light,
  useMaterial3: true,
);

/// Dark theme of this application.
final $darkThemeData = ThemeData(
  colorScheme: const ColorScheme.dark(
    primary: Color(0xFF000000),
  ),
  brightness: Brightness.dark,
  useMaterial3: true,
);
