import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'calculator_event.dart';
part 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  CalculatorBloc() : super(CalculatorState()) {
    on<CalculatorEvent>((event, emit) async {
      // Borrar todo
      if (event is ResetAC) {
        return emit(_resetAC());
      }
      // Añadir números
      else if (event is AddNumber) {
        return emit(state.copyWith(
            mathResult: (state.mathResult == '0')
                ? event.number
                : state.mathResult + event.number));
      }
      // Cambiar signo de positivo a negativo y viceversa
      else if (event is ChangeNegativePositive) {
        return emit(state.copyWith(
            mathResult: state.mathResult.contains('-')
                ? state.mathResult.replaceFirst('-', '')
                : '-${state.mathResult}'));
      }

      // Eliminar el último dígito
      else if (event is RemoveLastChar) {
        return emit(state.copyWith(
            mathResult: state.mathResult.length > 1
                ? state.mathResult.substring(0, state.mathResult.length - 1)
                : '0'));
      }

      // Añadir el operador matemático
      else if (event is AddOperator) {
        return emit(state.copyWith(
          firstNumber: state.mathResult,
          mathResult: '0',
          operator: event.operator,
          secondNumber: '0',
        ));
      }

      // Calcular resultado de la operación
      else if (event is CalculateOperation) {
        return emit(_calculateOperation());
      }
    });
  }

  CalculatorState _resetAC() {
    return CalculatorState(
        firstNumber: "", secondNumber: "", operator: "", mathResult: "0");
  }

  CalculatorState _calculateOperation() {
    final double num1 = double.parse(state.firstNumber);
    final double num2 = double.parse(state.mathResult);

    switch (state.operator) {
      case '+':
        return state.copyWith(
            secondNumber: state.mathResult, mathResult: '${num1 + num2}');
      // break;
      case '-':
        return state.copyWith(
            secondNumber: state.mathResult, mathResult: '${num1 - num2}');
      // break;
      case 'X':
        return state.copyWith(
            secondNumber: state.mathResult, mathResult: '${num1 * num2}');
      // break;
      case '/':
        return state.copyWith(
            secondNumber: state.mathResult, mathResult: '${num1 / num2}');
      // break;
      default:
        return state;
    }
  }
}
