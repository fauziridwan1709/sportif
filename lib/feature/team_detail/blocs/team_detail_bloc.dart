import 'package:bloc/bloc.dart';
import 'package:core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'team_detail_bloc.freezed.dart';
part 'team_detail_event.dart';
part 'team_detail_state.dart';

@injectable
class TeamDetailBloc extends Bloc<TeamDetailEvent, TeamDetailStates> {
  TeamDetailBloc() : super(const TeamDetailStates.initializing()) {
    on<GetTeamDetailEvent>(_getTeamDetail);
  }

  Future<void> _getTeamDetail(
    GetTeamDetailEvent event,
    Emitter<TeamDetailStates> emit,
  ) async {}
}
