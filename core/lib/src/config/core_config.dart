import 'package:core/core.dart';

class CoreConfig {
  static Flavor? appFlavor;
  static String? appName;
  static String? packageName;

  /// Initialize Config.
  static Future<void> init(
    Flavor flavor,
  ) async {
    appFlavor = flavor;
    appName = flavor.name;

    await configureCoreDependencies();
  }

  static bool get isDevelopment => appFlavor == Flavor.development;
  static bool get isProduction => appFlavor == Flavor.production;
}
