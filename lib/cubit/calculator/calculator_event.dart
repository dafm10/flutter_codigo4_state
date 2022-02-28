part of 'calculator_bloc.dart';

@immutable
abstract class CalculatorEvent {}

// Definit los eventos a utilizar

class AddNumber1 extends CalculatorEvent {}
class AddNumber2 extends CalculatorEvent {}
class CalculateResult extends CalculatorEvent {}
class Reset extends CalculatorEvent {}
