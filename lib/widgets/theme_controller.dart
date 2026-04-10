import 'package:flutter/material.dart';

class ThemeController {
  ThemeController._();

  static final ThemeController instance = ThemeController._();

  final ValueNotifier<ThemeMode> themeMode =
  ValueNotifier(ThemeMode.dark);

  void toggleTheme(bool isDark) {
    themeMode.value =
    isDark ? ThemeMode.dark : ThemeMode.light;
  }
}