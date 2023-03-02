// Package imports:
import 'package:injectable/injectable.dart';
import 'package:my_techanic_core/my_techanic_core.dart';

// Project imports:
import 'di.config.dart';

@InjectableInit(
  initializerName: r'$initGetIt',
)
Future<void> configureDependencies() async => $initGetIt(
      getIt,
    );
