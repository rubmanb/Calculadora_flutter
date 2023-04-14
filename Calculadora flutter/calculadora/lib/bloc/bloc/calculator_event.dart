part of 'calculator_bloc.dart';

@immutable
abstract class CalculatorEvent {}

class ResetAC extends CalculatorEvent {}

class AddNumber extends CalculatorEvent {
  final String number;
  AddNumber(this.number);
}

class AddOperator extends CalculatorEvent {
  final String operator;
  AddOperator(this.operator);
}

class AddFinalResult extends CalculatorEvent {
  final String result;
  AddFinalResult(this.result);
}

class ChangeNegativePositive extends CalculatorEvent {}

class RemoveLastChar extends CalculatorEvent {}

class CalculateOperation extends CalculatorEvent {}
