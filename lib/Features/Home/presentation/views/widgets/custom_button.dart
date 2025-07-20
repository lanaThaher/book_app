import 'package:book_app/core/utils/functions/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.borderRadius,
    required this.textColor,
    required this.text,
  });

  final Color backgroundColor;
  final BorderRadius? borderRadius;
  final Color textColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12),
          ),
        ),
        child: Text(text, style: Styles.textStyle18.copyWith(color: textColor)),
      ),
    );
  }
}
