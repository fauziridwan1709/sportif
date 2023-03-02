import 'package:core/core.dart';
import 'package:dio/native_imp.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:injectable/injectable.dart';
// import 'package:utils/utils.dart';

@injectable
class ApiDio extends DioForNative {
  ApiDio() {
    _configureOptions();
    _configureInterceptors();
  }

  void _configureOptions() {
    switch (CoreConfig.appFlavor ?? Flavor.prototype) {
      case Flavor.testing:
        options.baseUrl = Env.baseUrl;
        break;
      case Flavor.prototype:
        options.baseUrl = Env.baseUrl;
        break;
      case Flavor.staging:
        options.baseUrl = Env.baseUrl;
        break;
      case Flavor.production:
        options.baseUrl = Env.baseUrl;
        break;
    }
  }

  void _configureInterceptors() {
    interceptors
      ..add(LoggerInterceptor())
      ..add(RetryInterceptor(dio: this, retries: 2))
      ..add(AppDioCacheInterceptor())
      ..add(ErrorHandlerInterceptor(dio: this));
  }
}
