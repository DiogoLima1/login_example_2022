import 'package:flutter/material.dart';
import 'package:login_example/utilities/themes/app_colors.dart';
import 'package:login_example/utilities/themes/app_input.dart';

class Button extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const Button({Key? key, required this.buttonText, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: ElevatedButton(
        style: AppInput.elevatedButtonDefault(),
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: const TextStyle(
            color: AppColors.buttonText,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
