import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recepo/Core/helpers/spacing.dart';
import 'package:recepo/Core/theming/styles.dart';

class SignupViewWelcomeTexts extends StatelessWidget {
  const SignupViewWelcomeTexts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: AlignmentDirectional.topStart,
          child: Text(
            "Create Account",
            style: Styles.font32BlueBold.copyWith(
              fontSize: 24.sp,
              letterSpacing: -0.48,
            ),
          ),
        ),
        verticalSpace(8),
        Text(
          "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
          style: Styles.font13GreyBold.copyWith(
            fontSize: 15.sp,
            letterSpacing: 0.20,
          ),
        ),
      ],
    );
  }
}
