part of 'team_bloc.dart';

@immutable
@freezed
class TeamStates with _$TeamStates {
  const factory TeamStates.initializing() = $TeamInitializingState;
  const factory TeamStates.loading() = $TeamLoadingState;
  const factory TeamStates.loaded({
    required List<TeamResponse> teams,
  }) = $TeamLoadedState;
  const factory TeamStates.failure({
    required Failure failure,
  }) = $TeamFailureState;
}
