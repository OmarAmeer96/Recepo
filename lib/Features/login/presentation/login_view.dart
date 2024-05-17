import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recepo/Core/utils/extensions.dart';
import 'package:recepo/Core/utils/spacing.dart';
import 'package:recepo/Core/routing/routes.dart';
import 'package:recepo/Core/theming/colors_manager.dart';
import 'package:recepo/Core/theming/styles.dart';
import 'package:recepo/Core/widgets/custom_main_button.dart';
import 'package:recepo/Core/widgets/terms_and_conditions_text.dart';
import 'package:recepo/Features/login/logic/login_cubit/login_cubit.dart';
import 'package:recepo/Features/login/presentation/widgets/do_not_have_an_account_text.dart';
import 'package:recepo/Features/login/presentation/widgets/login_bloc_listener.dart';
import 'package:recepo/Features/login/presentation/widgets/login_email_and_password_widget.dart';
import 'package:recepo/Features/login/presentation/widgets/login_view_welcome_texts.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
                  const LoginViewWelcomeTexts(),
                  verticalSpace(32),
                  Column(
                    children: [
                      const LoginEmailAndPasswordWidget(),
                      verticalSpace(16),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Forgot password?',
                            style: Styles.font13GreyBold.copyWith(
                              color: ColorsManager.primaryColor,
                            ),
                          ),
                        ),
                      ),
                      verticalSpace(30),
                      Hero(
                        tag: "registeringButton",
                        child: CustomMainButton(
                          onPressed: () {
                            validateThenLogin(context);
                          },
                          buttonText: 'Login',
                        ),
                      ),
                      verticalSpace(18),
                      const TermsAndConditionsText(),
                      verticalSpace(60),
                      const DontHaveAccountText(),
                      const LoginBlocListener(),
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

  void validateThenLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      // context.read<LoginCubit>().emitLoginState();
      context.pushReplacementNamed(Routes.homeView);
    }
  }
}
