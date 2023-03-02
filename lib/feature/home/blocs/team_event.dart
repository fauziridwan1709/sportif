part of 'team_bloc.dart';

abstract class TeamEvent extends Equatable {
  const TeamEvent();
}

class GetAllTeamEvent extends TeamEvent {
  const GetAllTeamEvent({
    this.page = 1,
    this.limit = 10,
  });

  final int page;
  final int limit;

  @override
  List<Object?> get props => [];
}
