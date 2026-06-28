import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_colors.dart';

class AppButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final double width;
  final Color? backgroundColor;
  final Color? textColor;

  const AppButton(
      {super.key,
      required this.buttonText,
      required this.onPressed,
      this.width = 360,
      this.backgroundColor,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: backgroundColor ?? AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            color: textColor ?? Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
