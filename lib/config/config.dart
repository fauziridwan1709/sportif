// Dart imports:

// Package imports:
// Flutter imports:
import 'package:core/core.dart';
import 'package:flutter/foundation.dart';
import 'package:sportif/di/di.dart';

class Config {
  static Flavor? appFlavor;
  static String? appName;
  static String? packageName;

  /// Initialize Config.
  static Future<void> init(
    Flavor flavor,
  ) async {
    appFlavor = flavor;
    appName = flavor.name;

    // [configureDependencies] should place at top.
    await configureDependencies();
    if (!kDebugMode) {}
  }
}
