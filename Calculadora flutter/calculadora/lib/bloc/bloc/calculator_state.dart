part of 'calculator_bloc.dart';

class CalculatorState {
  String mathResult;
  String firstNumber;
  String secondNumber;
  String operator;

  CalculatorState(
      {this.mathResult = '30',
      this.firstNumber = '10',
      this.secondNumber = '20',
      this.operator = '+'});

  CalculatorState copyWith({
    String? mathResult,
    String? firstNumber,
    String? secondNumber,
    String? operator,
  }) =>
      CalculatorState(
        mathResult: mathResult ?? this.mathResult,
        firstNumber: firstNumber ?? this.firstNumber,
        secondNumber: secondNumber ?? this.secondNumber,
        operator: operator ?? this.operator,
      );
}
