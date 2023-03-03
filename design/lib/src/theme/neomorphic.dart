import 'package:design/design.dart';
import 'package:flutter/material.dart';

/// Implementation for app material theme.
class NeomorphicThemeData implements AppTheme {
  @override
  ThemeData dark() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.black,
      ),
    );
  }

  @override
  ThemeData light() {
    return ThemeData(
      useMaterial3: true,
    );
  }
}
