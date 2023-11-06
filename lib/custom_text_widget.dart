import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Roll the dice',
      style: TextStyle(color: Colors.black, fontSize: 25),
    );
  }
}
