// Package imports:
import 'package:core/core.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'di.config.dart';

@InjectableInit(
  initializerName: r'$initGetIt',
)
Future<void> configureDependencies() async => $initGetIt(
      getIt,
    );
