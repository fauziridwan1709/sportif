import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:core/core.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'team_bloc.freezed.dart';
part 'team_event.dart';
part 'team_state.dart';

@injectable
class TeamBloc extends Bloc<TeamEvent, TeamStates> {
  TeamBloc(this._getAllTeamUseCase) : super(const TeamStates.initializing()) {
    on<GetAllTeamEvent>(_getAllTeam);
  }

  final GetAllTeamUseCase _getAllTeamUseCase;

  Future<void> _getAllTeam(
    GetAllTeamEvent event,
    Emitter<TeamStates> emit,
  ) async {
    emit(const TeamStates.loading());
    final englishPremiereLeague = 'English Premier League';
    final germanBundesLeague = 'German%20Bundesliga';
    final result = await _getAllTeamUseCase.execute(
      league:
          CoreConfig.isDevelopment ? englishPremiereLeague : germanBundesLeague,
    );
    result.fold(
      (l) => emit(TeamStates.failure(failure: l)),
      (r) => emit(TeamStates.loaded(teams: r.teams ?? [])),
    );
  }
}
