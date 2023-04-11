import 'package:calculadora/bloc/bloc/calculator_bloc.dart';
import 'package:calculadora/widgets/sub_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'line_separator.dart';
import 'main_result.dart';

class ResultsLabel extends StatelessWidget {
  const ResultsLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalculatorBloc, CalculatorState>(
      builder: (context, state) {
        return Column(
          children: [
            SubResult(text: state.firstNumber),
            SubResult(text: state.operator),
            SubResult(text: state.secondNumber),
            const LineSeparator(),
            MainResultText(text: state.mathResult),
          ],
        );
      },
    );
  }
}
