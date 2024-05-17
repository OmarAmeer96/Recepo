import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recepo/Core/utils/extensions.dart';
import 'package:recepo/Core/routing/routes.dart';
import 'package:recepo/Core/theming/colors_manager.dart';
import 'package:recepo/Core/theming/font_family_helper.dart';
import 'package:recepo/Core/theming/styles.dart';
import 'package:recepo/Core/utils/loaading_animation.dart';
import 'package:recepo/Features/login/logic/login_cubit/login_cubit.dart';
import 'package:recepo/Features/login/logic/login_cubit/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading ||
          current is Success ||
          current is Error ||
          current is GetUserProfileSuccess,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: LoadingAnimation(),
                // CircularProgressIndicator(
                //   color: ColorsManager.primaryColor,
                // ),
              ),
            );
          },
          success: (loginResponse) async {
            log(
              '${loginResponse.userData!.token}',
              name: 'TOKEN',
            );
            context.pushReplacementNamed(Routes.homeView);
          },
          error: (error) {
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
