// Dart imports:

// Package imports:
// Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sportif/di/di.dart';
import 'package:sportif/features/auth/login/screen/route.dart';
import 'package:sportif/route/go_router/router.dart';
import 'package:sportif_core/my_techanic_core.dart';
// Project imports:
import 'package:utils/utils.dart';

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
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
    if (!kDebugMode) {}
  }
}
