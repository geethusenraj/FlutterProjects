import 'package:flutter/material.dart';

import 'dice_roller.dart';

class GradientContainerWidget extends StatelessWidget {
  GradientContainerWidget(this.begin, this.end, this.gradientColors,
      {super.key});

  Alignment begin;
  Alignment end;
  List<Color> gradientColors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: gradientColors, begin: begin, end: end)),
      child: const Center(child: DiceRoller()),
    );
  }
}
