part of 'team_detail_bloc.dart';

abstract class TeamDetailEvent {
  const TeamDetailEvent();
}

class GetTeamDetailEvent extends TeamDetailEvent {
  const GetTeamDetailEvent({
    required this.teamId,
  });
  final int teamId;
}
