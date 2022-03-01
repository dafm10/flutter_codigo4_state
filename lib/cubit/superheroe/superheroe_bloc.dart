
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'superheroe_event.dart';
part 'superheroe_state.dart';

class SuperheroeBloc extends Bloc<SuperheroeEvent, SuperheroeState> {
  SuperheroeBloc() : super(SuperheroeInitial()) {
    on<SuperheroeCreateEvent>((event, emit) {
      print(event);
      print(state);
      // TODO: implement event handler
    });

    on<SuperheroeUpdateExperienceEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<SuperheroeAddPowerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
