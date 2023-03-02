import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'season_event.dart';
part 'season_state.dart';

@injectable
class SeasonBloc extends Bloc<SeasonEvent, SeasonState> {
  SeasonBloc() : super(SeasonInitial()) {
    on<SeasonEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
