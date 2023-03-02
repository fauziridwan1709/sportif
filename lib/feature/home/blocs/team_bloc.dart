import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'team_event.dart';
part 'team_state.dart';

@injectable
class TeamBloc extends Bloc<TeamEvent, TeamState> {
  TeamBloc() : super(TeamInitial()) {
    on<TeamEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
