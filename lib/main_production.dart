// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_techanic/app.dart';
import 'package:my_techanic/config/config.dart';
import 'package:my_techanic/features/splash/screen/ui.dart';
import 'package:my_techanic_core/my_techanic_core.dart';
import 'package:package_info_plus/package_info_plus.dart';
// Project imports:
import 'package:utils/utils.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runZonedGuarded(() async {
    // caution: should initialize at top
    await Firebase.initializeApp();
    final packageInfo = await PackageInfo.fromPlatform();
    runApp(
      SplashScreen(
        applicationVersion: packageInfo.version,
        loadLib: (context) async {
          await CoreConfig.init(Flavor.production);
          await configureUtilsDependencies();
          await Config.init(Flavor.production);
        },
        launch: (context) async {
          launchApp();
        },
      ),
    );
  }, (Object object, StackTrace stacktrace) {
    FirebaseCrashlytics.instance.recordError(object, stacktrace);
    debugPrint('Error while starting');
    debugPrint(object.toString());
    debugPrint(stacktrace.toString());
  });
}
