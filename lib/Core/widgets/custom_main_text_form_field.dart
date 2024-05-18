import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recepo/Core/theming/colors_manager.dart';
import 'package:recepo/Core/theming/styles.dart';

class CustomMainTextFormField extends StatelessWidget {
  const CustomMainTextFormField({
    super.key,
    this.contentPadding,
    this.enabledBorder,
    this.focusedBorder,
    this.errorBorder,
    required this.labelText,
    this.labelStyle,
    this.prefixIcon,
    this.suffixIcon,
    this.isObscureText,
    this.style,
    this.fillColor,
    this.controller,
    required this.validator,
    this.keyboardType,
  });

  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final InputBorder? errorBorder;
  final String labelText;
  final TextStyle? labelStyle;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? isObscureText;
  final TextStyle? style;
  final Color? fillColor;
  final TextEditingController? controller;
  final Function(String?) validator;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType ?? TextInputType.text,
      controller: controller,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(
              vertical: 17.h,
              horizontal: 20.w,
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: const BorderSide(
                color: ColorsManager.enabledTextFieldColor,
                width: 1.3,
              ),
            ),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: const BorderSide(
                color: ColorsManager.mainBlue,
                width: 1.3,
              ),
            ),
        errorBorder: errorBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: const BorderSide(
                color: ColorsManager.errorTextFieldColor,
                width: 1.3,
              ),
            ),
        focusedErrorBorder: errorBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: const BorderSide(
                color: ColorsManager.errorTextFieldColor,
                width: 1.3,
              ),
            ),
        labelText: labelText,
        labelStyle: labelStyle ?? Styles.enabledTextFieldsLabelText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        fillColor: fillColor ?? ColorsManager.textFieldFillColor,
        filled: true,
      ),
      obscureText: isObscureText ?? false,
      style: style ?? Styles.focusedTextFieldsLabelText,
      validator: (value) {
        return validator(value);
      },
    );
  }
}
