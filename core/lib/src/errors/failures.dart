import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:utils/utils.dart';

abstract class Failure implements Exception {
  Failure({
    this.title,
    this.code,
    this.message = 'Failure',
  });

  String? title;

  /// In case server provider error codes.
  String? code;

  /// Hold Error Message.
  String message;

  @override
  String toString() {
    return message;
  }
}

class DioFailure implements Exception {
  DioFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.cancel:
        message = 'Request to API server was cancelled';
        break;
      case DioErrorType.connectTimeout:
        message = 'Connection timeout with API server';
        break;
      case DioErrorType.other:
        message = 'Connection to API server failed due to internet connection';
        break;
      case DioErrorType.receiveTimeout:
        message = 'Receive timeout in connection with API server';
        break;
      case DioErrorType.sendTimeout:
        message = 'Send timeout in connection with API server';
        break;
      case DioErrorType.response:
        message = _handleResponseError(dioError.response);
        statusCode = dioError.response?.statusCode;
        break;
    }
  }

  String message = 'Permintaan gagal, silahkan coba lagi atau hubungi admin';
  int? statusCode;

  String _handleResponseError(Response? res) {
    var errorMessage = message;
    try {
      if (res?.data is String) {
        errorMessage = res?.data;
      }

      if (res?.data['meta'] != null) {
        errorMessage = res!.data['meta']['message'].toString();
      }

      if (res?.data['errors'] != null) {
        errorMessage = res!.data['errors'].toString();
      }

      if (res?.data['message'] != null) {
        errorMessage = res!.data['message'].toString();
      }
    } catch (e) {
      AppLogger.e(e.toString());
    }

    return errorMessage;
  }

  @override
  String toString() => message;
}

class NetworkFailure extends Failure {
  NetworkFailure({
    String? code,
    String? message,
  }) : super(
          code: code,
          message: message ?? RuntimeErrorMessages.socketError,
          title: 'Network Failure',
        );
}

class NotFoundFailure extends Failure {
  NotFoundFailure({
    String? code,
    String? message,
  }) : super(
          code: code,
          message: message ?? 'Not Found',
          title: 'Not Found Failure',
        );
}

class BadRequestFailure extends Failure {
  BadRequestFailure({
    String? code,
    String? message,
  }) : super(
          code: code,
          message: message ?? 'Bad request',
          title: 'Bad Request Failure',
        );
}

class GeneralFailure extends Failure {
  GeneralFailure({
    String? message,
  }) : super(
          message: message ?? 'General Failure',
          title: 'General Failure',
        );
}

class TimeoutFailure extends Failure {
  TimeoutFailure({
    String? message,
  }) : super(
          message: message ?? RuntimeErrorMessages.timeout,
          title: 'Timeout Failure',
        );
}

class ArgumentFailure extends Failure {
  ArgumentFailure({
    String? message,
  }) : super(
          message: message ?? 'Argument Failure',
          title: 'Argument Failure',
        );
}

class ParseFailure extends Failure {}

class EmptyFailure extends Failure {}

class FirebaseAuthFailure extends Failure {
  FirebaseAuthFailure({
    String? errCode,
    String? message,
  }) : super(
          code: errCode,
          message: message ?? 'Firebase Authentication failure',
        );
}

class UnauthenticatedFailure extends Failure {
  UnauthenticatedFailure({
    String? errCode,
    String? message,
  }) : super(
          code: errCode,
          message: message ?? 'Unauthenticated failure',
        );
}

class UnauthorizedFailure extends Failure {
  UnauthorizedFailure({
    String? errCode,
    String? message,
  }) : super(
          code: errCode,
          message: message ?? 'Unauthorized failure',
        );
}

class PermissionFailure extends Failure {
  PermissionFailure({
    String? errCode,
    String? message,
  }) : super(
          code: errCode,
          message: message ?? 'Permission failure',
        );
}

// Inside utils.
class ServiceFailure extends Failure {
  ServiceFailure({
    String? errCode,
    String? message,
  }) : super(
          code: errCode,
          message: message ?? 'Service failure',
        );
}

class FileSizeFailure extends Failure {
  FileSizeFailure({
    String? errCode,
    String? message,
  }) : super(
          code: errCode,
          message: message ?? 'File size is too big',
        );
}
