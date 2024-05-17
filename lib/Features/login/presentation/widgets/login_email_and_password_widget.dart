import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recepo/Core/utils/app_regex.dart';
import 'package:recepo/Core/utils/spacing.dart';
import 'package:recepo/Core/theming/styles.dart';
import 'package:recepo/Core/widgets/custom_main_text_form_field.dart';
import 'package:recepo/Features/login/logic/login_cubit/login_cubit.dart';

class LoginEmailAndPasswordWidget extends StatefulWidget {
  const LoginEmailAndPasswordWidget({super.key});

  @override
  State<LoginEmailAndPasswordWidget> createState() =>
      _LoginEmailAndPasswordWidgetState();
}

class _LoginEmailAndPasswordWidgetState
    extends State<LoginEmailAndPasswordWidget> {
  bool isObscureText = true;

  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  late TextEditingController passwordController;

  @override
  void initState() {
    passwordController = context.read<LoginCubit>().passwordController;
    super.initState();
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          CustomMainTextFormField(
            labelText: 'Username',
            labelStyle: Styles.enabledTextFieldsLabelText,
            isObscureText: false,
            style: Styles.focusedTextFieldsLabelText,
            controller: context.read<LoginCubit>().emailController,
            validator: (value) {
              if (value!.isEmpty || !AppRegex.isEmailValid(value)) {
                return 'Please enter your username';
              }
            },
            prefixIcon: const Icon(Icons.person_outline),
          ),
          verticalSpace(18),
          CustomMainTextFormField(
            labelText: 'Password',
            labelStyle: Styles.enabledTextFieldsLabelText,
            isObscureText: isObscureText,
            style: Styles.focusedTextFieldsLabelText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: Icon(
                isObscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            prefixIcon: const Icon(Icons.password_rounded),
            controller: context.read<LoginCubit>().passwordController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your password';
              }
            },
          ),
          // verticalSpace(18),
          // PasswordValidations(
          //   hasLowerCase: hasLowerCase,
          //   hasUpperCase: hasUpperCase,
          //   hasSpecialCharacters: hasSpecialCharacters,
          //   hasNumber: hasNumber,
          //   hasMinLength: hasMinLength,
          // ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
