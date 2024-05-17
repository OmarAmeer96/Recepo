import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recepo/Core/utils/extensions.dart';
import 'package:recepo/Core/utils/spacing.dart';
import 'package:recepo/Core/routing/routes.dart';
import 'package:recepo/Core/widgets/custom_main_button.dart';
import 'package:recepo/Core/widgets/terms_and_conditions_text.dart';
import 'package:recepo/Features/signup/logic/signup_cubit/signup_cubit.dart';
import 'package:recepo/Features/signup/presentation/widgets/already_have_an_account_text.dart';
import 'package:recepo/Features/signup/presentation/widgets/signup_bloc_listener.dart';
import 'package:recepo/Features/signup/presentation/widgets/signup_email_and_password_widget.dart';
import 'package:recepo/Features/signup/presentation/widgets/signup_view_welcome_texts.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: EdgeInsets.only(
              top: 50.h,
              left: 24.w,
              right: 24.w,
              bottom: 24.h,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SignupViewWelcomeTexts(),
                  verticalSpace(32),
                  Column(
                    children: [
                      const SignupEmailAndPasswordWidget(),
                      verticalSpace(0),
                      Hero(
                        tag: "registeringButton",
                        child: CustomMainButton(
                          onPressed: () {
                            validateThenSignup(context);
                          },
                          buttonText: 'Sign Up',
                        ),
                      ),
                      verticalSpace(18),
                      const TermsAndConditionsText(),
                      verticalSpace(30),
                      const AlreadyHaveAccountText(),
                      const SignupBlocListener(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void validateThenSignup(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      // context.read<SignupCubit>().emitSignupState();
      context.pushReplacementNamed(Routes.homeView);
    }
  }
}
