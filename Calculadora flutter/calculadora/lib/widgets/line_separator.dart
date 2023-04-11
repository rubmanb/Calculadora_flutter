import 'package:flutter/material.dart';

class LineSeparator extends StatelessWidget {
  const LineSeparator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 2,
        color: Colors.white.withOpacity(0.4),
        margin: const EdgeInsets.symmetric(vertical: 8));
  }
}
