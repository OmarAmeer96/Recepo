import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recepo/Core/shared_prefs/shared_prefs.dart';
import 'package:recepo/Core/shared_prefs/shred_prefs_constants.dart';
import 'package:recepo/Features/login/data/models/login_request_body.dart';
import 'package:recepo/Features/login/data/repos/login_repo.dart';
import 'package:recepo/Features/login/logic/login_cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  final formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isObscureText = true;

  Future<void> emitLoginState() async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(
      LoginRequestBody(
        username: usernameController.text,
        password: passwordController.text,
      ),
    );
    response.when(
      success: (loginResponse) async {
        if (loginResponse.status != 200) {
          emit(LoginState.error(error: loginResponse.message ?? ''));
        } else {
          await SharedPrefs.setString(
            key: kToken,
            value: loginResponse.userData!.token!,
          );
          await SharedPrefs.setString(
            key: kUsername,
            value: usernameController.text,
          );
          await SharedPrefs.setString(
            key: kPassword,
            value: passwordController.text,
          );
          await SharedPrefs.setInt(
            key: kUserId,
            value: loginResponse.userData!.userId!,
          );
          await SharedPrefs.setString(
            key: kStripeId,
            value: loginResponse.userData!.stripeId!,
          );
          await SharedPrefs.setString(
            key: kRole,
            value: loginResponse.userData!.role!,
          );
          emit(LoginState.success(loginResponse));
        }
      },
      failure: (error) {
        emit(LoginState.error(
            error: error.apiErrorModel.message ?? 'Something went wrong!'));
      },
    );
  }

  Future<void> emitGetUserProfile() async {
    // emit(const LoginState.loading());
    final response = await _loginRepo.getUserProfile(
      SharedPrefs.getString(key: kToken)!,
      SharedPrefs.getInt(key: kUserId)!,
    );
    response.when(
      success: (getUserProfileResponse) async {
        if (getUserProfileResponse.status != 200) {
          emit(LoginState.error(error: getUserProfileResponse.message ?? ''));
        } else {
          await SharedPrefs.setString(
            key: kRole,
            value: getUserProfileResponse.userData!.role!,
          );
          await SharedPrefs.setString(
            key: kPhone,
            value: getUserProfileResponse.userData!.phoneNumber!,
          );
          await SharedPrefs.setString(
            key: kFullName,
            value: getUserProfileResponse.userData!.fullName ?? '',
          );
          await SharedPrefs.setString(
            key: kProfilePhotoURL,
            value: getUserProfileResponse.userData!.profilePhotoURL ?? '',
          );
          await SharedPrefs.setString(
            key: kGender,
            value: getUserProfileResponse.userData!.gender ?? 'MALE',
          );
          await SharedPrefs.setString(
            key: kCity,
            value: getUserProfileResponse.userData!.city ?? '',
          );
          await SharedPrefs.setString(
            key: kNationalId,
            value: getUserProfileResponse.userData!.nationalId ?? '',
          );
        }
        emit(LoginState.getUserProfileSuccess(getUserProfileResponse));
      },
      failure: (error) {
        emit(
          LoginState.error(
              error: error.apiErrorModel.message ?? 'Something went wrong!'),
        );
      },
    );
  }
}
