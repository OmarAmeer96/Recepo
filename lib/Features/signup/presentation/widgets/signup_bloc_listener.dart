import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recepo/Core/utils/extensions.dart';
import 'package:recepo/Core/routing/routes.dart';
import 'package:recepo/Core/theming/colors_manager.dart';
import 'package:recepo/Core/theming/font_family_helper.dart';
import 'package:recepo/Core/theming/styles.dart';
import 'package:recepo/Core/utils/loaading_animation.dart';
import 'package:recepo/Features/signup/logic/signup_cubit/signup_cubit.dart';
import 'package:recepo/Features/signup/logic/signup_cubit/signup_state.dart';

class SignupBlocListener extends StatelessWidget {
  const SignupBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: LoadingAnimation(),
                // CircularProgressIndicator(
                //   color: ColorsManager.mainBlue,
                // ),
              ),
            );
          },
          success: (signupResponse) {
            context.pop();
            context.pushReplacementNamed(Routes.homeView);
          },
          error: (error) {
            context.pop();
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  Future<dynamic> setupErrorState(BuildContext context, String error) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          error,
          textAlign: TextAlign.center,
          style: Styles.font13GreyBold.copyWith(
            color: ColorsManager.mainBlue,
            fontSize: 15,
            fontFamily: FontFamilyHelper.medium,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: Styles.font13GreyBold.copyWith(
                color: ColorsManager.mainBlue,
                fontSize: 15,
                fontFamily: FontFamilyHelper.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
