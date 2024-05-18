import 'dart:io';

import 'package:dio/dio.dart';
import 'package:recepo/Core/networking/api_constants.dart';
import 'package:recepo/Features/home/data/models/products_model.dart';
import 'package:recepo/Features/login/data/models/get_user_profile_response.dart';
import 'package:recepo/Features/login/data/models/login_request_body.dart';
import 'package:recepo/Features/login/data/models/login_response.dart';
import 'package:recepo/Features/profile/data/models/update_user_profile_response.dart';
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

  // Update Profile
  @PUT(ApiConstants.updateProfile)
  @MultiPart()
  Future<UpdateUserProfileResponse> updateUserProfile({
    @Header('Authorization') required String token,
    @Part(name: "id") required int id,
    @Part(name: "fullName") String? fullName,
    @Part(name: "gender") String? gender,
    @Part(name: "city") String? city,
    @Part(name: "profilePicture") File? profilePicture,
    @Part(name: "nationalId") String? nationalId,
    @Part(name: "phone") String? phone,
  });

  // Get Products with Pagination
  @GET("https://dummyjson.com/products")
  Future<ProductsModel> getProducts({
    @Query('limit') required int limit,
    @Query('skip') required int skip,
  });

  @GET("https://dummyjson.com/products/search")
  Future<ProductsModel> searchProducts({
    @Query('q') required String query,
    @Query('limit') required int limit,
    @Query('skip') required int skip,
  });

  // // Delete Product
  // @DELETE("https://dummyjson.com/products/{id}")
  // Future<DeleteProductResponse> deleteProduct({
  //   @Header('Authorization') required String token,
  //   @Path('id') required int id,
  // });
}
