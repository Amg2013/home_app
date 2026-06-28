import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_colors.dart';

class AppTextFiled extends StatefulWidget {
  final TextEditingController? controller;
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final TextInputType keyboardType;
  final double width;

  const AppTextFiled({
    super.key,
    this.controller,
    this.hintText = 'Enter text',
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.width = 360,
  });

  @override
  State<AppTextFiled> createState() => _AppTextFiledState();
}

class _AppTextFiledState extends State<AppTextFiled> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: widget.width,
      decoration: BoxDecoration(
        color: AppColors.fieldFill,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.fieldBorder),
      ),
      child: TextField(
        controller: widget.controller,
        obscureText: widget.obscureText,
        keyboardType: widget.keyboardType,
        decoration: InputDecoration(
          hintText: widget.hintText,
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.suffixIcon,
          border: InputBorder.none,
          hintStyle: TextStyle(color: AppColors.textSecondary),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        ),
      ),
    );
  }
}
