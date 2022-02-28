import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'calculator_event.dart';

part 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {

  CalculatorBloc() : super(CalculatorState()) {

    on<AddNumber1>(
      (event, emit) {
        print("Event: $event");
        // emit(CalculatorState());
      },
    );
    on<AddNumber2>(
          (event, emit) {
        print("Event: $event");
        // emit(CalculatorState());
      },
    );
    on<CalculateResult>(
          (event, emit) {
        print("Event: $event");
        // emit(CalculatorState());
      },
    );
    on<Reset>(
          (event, emit) {
        print("Event: $event");
        // emit(CalculatorState());
      },
    );
  }
}
