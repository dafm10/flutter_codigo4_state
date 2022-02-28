part of 'calculator_bloc.dart';

/*@immutable
abstract class CalculatorState {}

class CalculatorInitial extends CalculatorState {}*/

class CalculatorState {
  final int result;
  final int number1;
  final int number2;

  CalculatorState({
    this.result = 0,
    this.number1 = 0,
    this.number2 = 0,
  });
}
