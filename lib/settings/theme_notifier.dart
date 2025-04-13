import 'package:flutter/material.dart';

class ThemeNotifier extends ValueNotifier<ThemeMode> {
  ThemeNotifier() : super(ThemeMode.dark);

  void toggleTheme() {
    value = (value == ThemeMode.dark) ? ThemeMode.light : ThemeMode.dark;
  }
}
