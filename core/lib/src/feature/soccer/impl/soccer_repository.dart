import 'dart:async';

import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class SoccerRepository {
  final SoccerApi _api;

  SoccerRepository({
    required SoccerApi api,
  }) : _api = api;

  Future<Either<Failure, AllTeamResponse>> getAllTeam(
    String league,
  ) async {
    final call = await apiCall(
      _api.getAllTeam(
        l: league,
        options: Options(extra: {kGlobalErrorHandler: true}),
      ),
    );

    return call.fold(left, (r) {
      return right(r);
    });
  }
}
