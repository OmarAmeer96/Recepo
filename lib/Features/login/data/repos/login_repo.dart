
import 'package:recepo/Core/networking/api_error_handler.dart';
import 'package:recepo/Core/networking/api_result.dart';
import 'package:recepo/Core/networking/api_service.dart';
import 'package:recepo/Features/login/data/models/get_user_profile_response.dart';
import 'package:recepo/Features/login/data/models/login_request_body.dart';
import 'package:recepo/Features/login/data/models/login_response.dart';

class LoginRepo {
  final ApiService _apiServices;

  LoginRepo(this._apiServices);

  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiServices.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<GetUserProfileResponse>> getUserProfile(
    String token,
    int id,
  ) async {
    try {
      final response = await _apiServices.getProfile(
        'Bearer $token',
        id,
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
