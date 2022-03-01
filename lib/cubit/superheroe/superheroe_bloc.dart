import 'package:bloc/bloc.dart';
import 'package:flutter_codigo4_state/models/superhero_model.dart';
import 'package:meta/meta.dart';

part 'superheroe_event.dart';

part 'superheroe_state.dart';

class SuperheroeBloc extends Bloc<SuperheroeEvent, SuperheroeState> {
  SuperheroeBloc() : super(SuperheroeState()) {
    on<SuperheroeCreateEvent>((event, emit) {
      emit(SuperheroeState(superheroe: event.superheroe));
    });

    on<SuperheroeUpdateExperienceEvent>((event, emit) {
      emit(SuperheroeState(
          superheroe:
              state.superheroe!.copyWith(experience: event.experience)));
    });

    on<SuperheroeAddPowerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
