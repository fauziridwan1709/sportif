import 'package:core/core.dart';
import 'package:core/src/feature/soccer/impl/soccer_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAllTeamUseCase {
  final SoccerRepository _repository;

  const GetAllTeamUseCase(this._repository);

  Future<Either<Failure, AllTeamResponse>> execute({
    required String league,
  }) async {
    return _repository.getAllTeam(
      league,
    );
  }
}
