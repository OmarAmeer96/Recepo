import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recepo/Core/utils/spacing.dart';
import 'package:recepo/Core/theming/colors_manager.dart';
import 'package:recepo/Core/theming/styles.dart';

class LoginViewWelcomeTexts extends StatelessWidget {
  const LoginViewWelcomeTexts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: AlignmentDirectional.topStart,
          child: Text(
            "Login to your account",
            style: Styles.font32BlueBold.copyWith(
              fontSize: 24.sp,
              letterSpacing: -0.48,
              color: ColorsManager.primaryColor,
            ),
          ),
        ),
        verticalSpace(8),
        Text(
          "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
          style: Styles.font13GreyBold.copyWith(
            fontSize: 15.sp,
            letterSpacing: 0.20,
          ),
        ),
      ],
    );
  }
}
