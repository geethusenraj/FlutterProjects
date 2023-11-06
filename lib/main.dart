import 'package:flutter/material.dart';

import 'gradient_container_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: GradientContainerWidget(
              Alignment.topLeft, Alignment.bottomRight, getGradientColors())),
    );
  }
}

List<Color> getGradientColors() {
  return [
    const Color.fromARGB(255, 23, 129, 184),
    const Color.fromARGB(255, 166, 200, 219),
    const Color.fromARGB(255, 14, 53, 73)
  ];
}
