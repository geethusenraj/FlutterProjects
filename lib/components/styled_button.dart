import 'package:flutter/material.dart';

class StyledButton extends StatelessWidget {
  const StyledButton(
      {super.key,
      required this.categoryType,
      required this.bgColor,
      required this.textColor});

  final String categoryType;
  final Color bgColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(bgColor),
          foregroundColor: MaterialStateProperty.all(textColor)),
      child: Text(categoryType),
    );
  }

  onPressed() {}
}
