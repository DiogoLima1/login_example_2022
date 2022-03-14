import 'package:flutter/material.dart';

class ProjetoButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;
  final double? width;
  final double? height;
  final Color? color;

  const ProjetoButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.width,
    this.height = 50,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        autofocus: true,
        onPressed: onPressed,
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: TextButton.styleFrom(
          shape: const StadiumBorder(),
          side: const BorderSide(color: Colors.white54),
          primary: Colors.white,
          backgroundColor: const Color(0xFF591FF8).withOpacity(0.25),
        ),
      ),
    );
  }
}
