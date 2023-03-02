import 'dart:async';

import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
// import 'package:utils/utils.dart';
// import 'package:my_techanic_design_system/my_techanic_design_system.dart';

@injectable
class ErrorHandlerInterceptor extends Interceptor {
  ErrorHandlerInterceptor({
    required this.dio,
  });

  final ApiDio dio;

  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    if (kDebugMode) {
      print('error type (runtime) ${err.error.runtimeType}');
      // AppLogger.e(err.requestOptions.extra);
    }
    final extra = err.requestOptions.extra;
    final isHandleError = extra[kGlobalErrorHandler] ?? false;
    if (!isHandleError) return super.onError(err, handler);
    bool? result;
    // if (err.error is SocketException) {
    //   result = await MTOConnectionErrorModal(onTapRetry: () {}).show<bool>();
    // } else if (err.error is TimeoutException) {
    //   result = false;
    // }
    if (result ?? false) {
      // access extra from options call api
      final RequestOptions options = err.requestOptions;
      try {
        await dio.fetch<void>(options).then((value) => handler.resolve(value));
      } on DioError catch (e) {
        super.onError(e, handler);
      }
    } else {
      super.onError(err, handler);
    }
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
  }
}
