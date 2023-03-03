part of 'team_detail_bloc.dart';

@freezed
class TeamDetailStates with _$TeamDetailStates {
  const factory TeamDetailStates.initializing() = $TeamDetailInitializingState;
  const factory TeamDetailStates.loading() = $TeamDetailLoadingState;
  const factory TeamDetailStates.loaded({
    required List<TeamResponse> teams,
  }) = $TeamDetailLoadedState;
  const factory TeamDetailStates.failure({
    required Failure failure,
  }) = $TeamDetailFailureState;
}
