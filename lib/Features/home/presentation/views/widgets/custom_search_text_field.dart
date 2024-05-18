import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:recepo/Core/theming/colors_manager.dart';
import 'package:recepo/Core/theming/styles.dart';

class CustomSearchTextField extends StatelessWidget {
  final void Function(String)? onChanged;
  const CustomSearchTextField({super.key, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: EdgeInsets.symmetric(
          vertical: 17.h,
          horizontal: 20.w,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: const BorderSide(
            color: ColorsManager.enabledTextFieldColor,
            width: 1.3,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: const BorderSide(
            color: ColorsManager.primaryColor,
            width: 1.3,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: const BorderSide(
            color: ColorsManager.errorTextFieldColor,
            width: 1.3,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: const BorderSide(
            color: ColorsManager.errorTextFieldColor,
            width: 1.3,
          ),
        ),
        labelText: 'Search',
        labelStyle: Styles.enabledTextFieldsLabelText,
        prefixIcon: const Icon(
          FontAwesomeIcons.magnifyingGlass,
        ),
        // const Icon(
        //   Icons.search,
        //   color: ColorsManager.subPrimaryColor,
        //   size: 24,
        // ),
        // suffixIcon: IconButton(
        //   onPressed: () {},
        //   icon: const Icon(
        //     Icons.filter_list,
        //     color: ColorsManager.subPrimaryColor,
        //   ),
        // ),
        fillColor: ColorsManager.textFieldFillColor,
        filled: true,
      ),
      style: Styles.focusedTextFieldsLabelText,
    );
  }
}
