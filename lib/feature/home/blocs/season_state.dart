part of 'season_bloc.dart';

abstract class SeasonState extends Equatable {
  const SeasonState();
}

class SeasonInitial extends SeasonState {
  @override
  List<Object> get props => [];
}
