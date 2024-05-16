import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recepo/Core/helpers/app_regex.dart';
import 'package:recepo/Core/helpers/spacing.dart';
import 'package:recepo/Core/theming/styles.dart';
import 'package:recepo/Core/widgets/custom_main_text_form_field.dart';
import 'package:recepo/Core/widgets/password_vlaidations.dart';
import 'package:recepo/Features/signup/logic/signup_cubit/signup_cubit.dart';

class SignupEmailAndPasswordWidget extends StatefulWidget {
  const SignupEmailAndPasswordWidget({super.key});

  @override
  State<SignupEmailAndPasswordWidget> createState() =>
      _SignupEmailAndPasswordWidgetState();
}

class _SignupEmailAndPasswordWidgetState
    extends State<SignupEmailAndPasswordWidget> {
  bool isPassTextFieldObscureText = true;
  bool isConfirmPassTextFieldObscureText = true;

  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  late TextEditingController passwordController;

  @override
  void initState() {
    passwordController = context.read<SignupCubit>().passwordController;
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
      key: context.read<SignupCubit>().formKey,
      child: Column(
        children: [
          CustomMainTextFormField(
            labelText: 'Username',
            labelStyle: Styles.enabledTextFieldsLabelText,
            isObscureText: false,
            style: Styles.focusedTextFieldsLabelText,
            controller: context.read<SignupCubit>().nameController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your your username';
              }
            },
            prefixIcon: const Icon(Icons.person_outline),
          ),
          // verticalSpace(18),
          // CustomMainTextFormField(
          //   labelText: 'Email',
          //   labelStyle: Styles.enabledTextFieldsLabelText,
          //   isObscureText: false,
          //   style: Styles.focusedTextFieldsLabelText,
          //   controller: context.read<SignupCubit>().emailController,
          //   validator: (value) {
          //     if (value!.isEmpty || !AppRegex.isEmailValid(value)) {
          //       return 'Please enter your email';
          //     }
          //   },
          //   prefixIcon: const Icon(Icons.email_outlined),
          // ),
          verticalSpace(18),
          CustomMainTextFormField(
            labelText: 'Password',
            labelStyle: Styles.enabledTextFieldsLabelText,
            isObscureText: isPassTextFieldObscureText,
            style: Styles.focusedTextFieldsLabelText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPassTextFieldObscureText = !isPassTextFieldObscureText;
                });
              },
              child: Icon(
                isPassTextFieldObscureText
                    ? Icons.visibility_off
                    : Icons.visibility,
              ),
            ),
            prefixIcon: const Icon(Icons.password_rounded),
            controller: context.read<SignupCubit>().passwordController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your password';
              }
            },
          ),
          verticalSpace(18),
          CustomMainTextFormField(
            labelText: 'Confirm Password',
            labelStyle: Styles.enabledTextFieldsLabelText,
            isObscureText: isConfirmPassTextFieldObscureText,
            style: Styles.focusedTextFieldsLabelText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isConfirmPassTextFieldObscureText =
                      !isConfirmPassTextFieldObscureText;
                });
              },
              child: Icon(
                isConfirmPassTextFieldObscureText
                    ? Icons.visibility_off
                    : Icons.visibility,
              ),
            ),
            prefixIcon: const Icon(Icons.password_rounded),
            controller: context.read<SignupCubit>().confirmPasswordController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your password';
              }
            },
          ),
          verticalSpace(18),
          // To reduce the space, so I commented it out
          PasswordValidations(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasSpecialCharacters: hasSpecialCharacters,
            hasNumber: hasNumber,
            hasMinLength: hasMinLength,
          ),
          verticalSpace(18),
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
