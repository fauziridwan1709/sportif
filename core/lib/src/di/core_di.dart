import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'core_di.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initCoreGetIt',
)
Future<void> configureCoreDependencies({
  String? environment,
  EnvironmentFilter? environmentFilter,
}) async =>
    $initCoreGetIt(
      getIt,
      environment: environment,
      environmentFilter: environmentFilter,
    );
