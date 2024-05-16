import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recepo/Core/theming/colors_manager.dart';
import 'package:recepo/Core/theming/font_family_helper.dart';

class Styles {
  // Main Fonts
  static TextStyle onboardingTitleFont = TextStyle(
    fontSize: 24.5.sp,
    color: Colors.black,
    fontFamily: FontFamilyHelper.bold,
  );

  // Not Main Fonts
  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.sp,
    color: ColorsManager.mainBlue,
    fontFamily: FontFamilyHelper.bold,
  );

  static TextStyle font18White600 = TextStyle(
    fontSize: 18.sp,
    color: Colors.white,
  );

  static TextStyle font13GreyBold = TextStyle(
    fontSize: 13.sp,
    color: ColorsManager.mainGrey,
    fontFamily: FontFamilyHelper.regular,
  );

  static TextStyle enabledTextFieldsLabelText = TextStyle(
    color: ColorsManager.mainGrey,
    fontSize: 14.sp,
    fontFamily: FontFamilyHelper.medium,
  );
  static TextStyle focusedTextFieldsLabelText = TextStyle(
    color: ColorsManager.focusedLabelTextColor,
    fontSize: 14.sp,
    fontFamily: FontFamilyHelper.medium,
  );
}
