import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_state.freezed.dart';

@freezed
class LoginState<T> with _$LoginState<T> {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = LoginLoading;
  const factory LoginState.success(T data) = Success<T>;
  const factory LoginState.error({required String error}) = LoginError;
  const factory LoginState.getUserProfileSuccess(T data) =
      GetUserProfileSuccess<T>;
}
