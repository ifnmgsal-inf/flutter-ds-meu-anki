import 'package:flutter/material.dart';
import 'package:meu_anki/ui/styles/colors.dart';

class RegularButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color backgroundColor;

  const RegularButton({
    super.key,
    required this.text,
    this.onPressed,
    this.backgroundColor = AppColors.primary,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 35,
          fontFamily: 'Inter',
        ),
      ),
    );
  }
}
