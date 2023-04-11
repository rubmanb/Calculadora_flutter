// ignore_for_file: void_checks

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'calculator_event.dart';
part 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  CalculatorBloc() : super(CalculatorState()) {
    on<CalculatorEvent>((event, emit) async* {
      if (event is ResetAC) {
        CalculatorState(
            firstNumber: "", secondNumber: "", operator: "", mathResult: "");
      }
    });
  }
}
