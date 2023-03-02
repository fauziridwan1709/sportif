// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../core.dart' as _i5;
import '../api/retrofit_module.dart' as _i7;
import '../client/api_dio.dart' as _i3;
import '../interceptor/error_handler.dart' as _i4;
import '../interceptor/logger.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initCoreGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final retrofitInjectableModule = _$RetrofitInjectableModule();
  gh.factory<_i3.ApiDio>(() => _i3.ApiDio());
  gh.factory<_i4.ErrorHandlerInterceptor>(
      () => _i4.ErrorHandlerInterceptor(dio: get<_i5.ApiDio>()));
  gh.factory<_i6.LoggerInterceptor>(() => _i6.LoggerInterceptor(
        request: get<bool>(),
        requestHeader: get<bool>(),
        requestBody: get<bool>(),
        responseHeader: get<bool>(),
        responseBody: get<bool>(),
        error: get<bool>(),
        maxWidth: get<int>(),
        compact: get<bool>(),
      ));
  gh.factory<_i5.SoccerApi>(
      () => retrofitInjectableModule.getFavouritesApi(get<_i5.ApiDio>()));
  return get;
}

class _$RetrofitInjectableModule extends _i7.RetrofitInjectableModule {}
