import 'dart:async';
import 'dart:io';

import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:utils/utils.dart';

/// Mapping api call into either success or failure.
/// Returns Either.
Future<Either<Failure, T>> apiCall<T>(Future<T> t) async {
  try {
    AppLogger.i(t.toString());
    final futureCall = await t;
    return Right(futureCall);
  } on DioError catch (e) {
    if (e.error is ArgumentError) {
      final error = e.error as ArgumentError;
      return Left(GeneralFailure(message: error.message));
    } else if (e.error is SocketException) {
      return Left(NetworkFailure());
    } else if (e.error is TimeoutException) {
      return Left(TimeoutFailure());
    } else if (e.error is FormatException) {
      return Left(GeneralFailure(message: RuntimeErrorMessages.format));
    }

    final failure = DioFailure.fromDioError(e);
    final message = failure.message;
    final code = failure.statusCode;
    if (code == 403) return Left(UnauthorizedFailure(message: message));
    if (code == 404) return Left(NotFoundFailure(message: message));
    return Left(GeneralFailure(message: message));
  } catch (e) {
    AppLogger.e(e.toString());
    AppLogger.e(e.runtimeType);
    if (e is TypeError) {
      return Left(GeneralFailure(message: RuntimeErrorMessages.typeError));
    } else if (e is TimeoutException) {
      return Left(TimeoutFailure());
    }

    return Left(GeneralFailure());
  }
}
