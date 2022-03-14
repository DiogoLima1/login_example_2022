import 'package:flutter/material.dart';
import 'package:login_example/utilities/themes/app_colors.dart';

class AppInput {
  static inputText(String hint) {
    return InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
        filled: true,
        fillColor: AppColors.buttonText,
        hintText: hint,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(6)));
  }

  static elevatedButtonDefault() {
    return ElevatedButton.styleFrom(
        primary: const Color(0xFF591FF8),
        onPrimary: const Color(0xFF591FF8),
        shadowColor: AppColors.greyMedium,
        onSurface: const Color(0xFF591FF8),
        padding: const EdgeInsets.all(15));
  }
}
