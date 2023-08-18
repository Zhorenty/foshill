import 'package:flutter/material.dart';

final $lightThemeData = ThemeData(
  colorScheme: const ColorScheme.light(
    primary: Color(0xFFFFFFFF),
  ),
  brightness: Brightness.light,
  useMaterial3: true,
);

final $darkThemeData = ThemeData(
  colorScheme: const ColorScheme.dark(
    primary: Color(0xFF000000),
  ),
  brightness: Brightness.dark,
  useMaterial3: true,
);
