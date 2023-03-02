import 'package:design/design.dart';
import 'package:flutter/material.dart';

/// Implementation for app material theme.
class DefaultMyTechanicThemeData implements AppTheme {
  // TODO(Any): Specify dark theme.
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
      brightness: Brightness.light,
    );
  }
}
