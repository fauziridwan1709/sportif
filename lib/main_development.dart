// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:sportif/app.dart';
import 'package:sportif/config/config.dart';
import 'package:sportif/feature/splash/screen/ui.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runZonedGuarded(() async {
    // caution: should initialize at top
    final packageInfo = await PackageInfo.fromPlatform();
    runApp(
      SplashScreen(
        applicationVersion: packageInfo.version,
        loadLib: (context) async {
          await CoreConfig.init(Flavor.development);
          await Config.init(Flavor.development);
        },
        launch: (context) async {
          launchApp();
        },
      ),
    );
  }, (Object object, StackTrace stacktrace) {
    debugPrint('Error while starting');
    debugPrint(object.toString());
    debugPrint(stacktrace.toString());
  });
}
