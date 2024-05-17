import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
            controller: context.read<LoginCubit>().usernameController,
            validator: (value) {
              if (value!.isEmpty /* || !AppRegex.isEmailValid(value) */) {
                return 'Please enter your username';
              }
            },
            prefixIcon: const Icon(Icons.person_outline),
          ),
          verticalSpace(18),
          CustomMainTextFormField(
            labelText: 'Password',
            labelStyle: Styles.enabledTextFieldsLabelText,
            isObscureText: context.read<LoginCubit>().isObscureText,
            style: Styles.focusedTextFieldsLabelText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  context.read<LoginCubit>().isObscureText =
                      !context.read<LoginCubit>().isObscureText;
                });
              },
              child: Icon(
                context.read<LoginCubit>().isObscureText
                    ? Icons.visibility_off
                    : Icons.visibility,
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
        ],
      ),
    );
  }
}
