import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'calculator_event.dart';

part 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {

  CalculatorBloc() : super(CalculatorState()) {

    on<AddNumber1>(
      (event, emit) {
        //print(state);
        //print("Event: $event");
        emit(state.copyWith(number1: state.number1 + 1));
      },
    );
    on<AddNumber2>(
          (event, emit) {
        //print("Event: $event");
            emit(state.copyWith(number2: state.number2 + 1));
      },
    );
    on<CalculateResult>(
          (event, emit) {
        //print("Event: $event");
        emit(state.copyWith(result: state.number1 + state.number2));
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
