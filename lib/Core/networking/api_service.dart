import 'package:dio/dio.dart';
import 'package:recepo/Core/networking/api_constants.dart';
import 'package:recepo/Features/login/data/models/get_user_profile_response.dart';
import 'package:recepo/Features/login/data/models/login_request_body.dart';
import 'package:recepo/Features/login/data/models/login_response.dart';
import 'package:recepo/Features/signup/data/models/signup_request_body.dart';
import 'package:recepo/Features/signup/data/models/signup_response.dart';
import 'package:retrofit/http.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  // Login
  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  // Signup
  @POST(ApiConstants.signup)
  Future<SignupResponse> signup(
    @Body() SignupRequestBody signupRequestBody,
  );

  // Get Profile
  @GET(ApiConstants.getUserProfile)
  Future<GetUserProfileResponse> getProfile(
    @Header('Authorization') String token,
    @Query('id') int id,
  );
}
