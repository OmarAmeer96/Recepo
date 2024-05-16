import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recepo/Core/helpers/extensions.dart';
import 'package:recepo/Core/routing/routes.dart';
import 'package:recepo/Core/theming/colors_manager.dart';
import 'package:recepo/Core/theming/styles.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account?',
            style: Styles.font13GreyBold.copyWith(
              color: Colors.black,
              fontSize: 13.sp,
            ),
          ),
          TextSpan(
            text: ' Sign Up',
            style: Styles.font32BlueBold.copyWith(
              fontSize: 13.sp,
              color: ColorsManager.primaryColor,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.signUpView);
                // Get.to(const SignUpView(), transition: Transition.fade);
              },
          ),
        ],
      ),
    );
  }
}
