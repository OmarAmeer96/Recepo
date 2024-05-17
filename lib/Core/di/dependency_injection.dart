import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:recepo/Core/networking/api_service.dart';
import 'package:recepo/Core/networking/dio_factory.dart';
import 'package:recepo/Features/login/data/repos/login_repo.dart';
import 'package:recepo/Features/login/logic/login_cubit/login_cubit.dart';
import 'package:recepo/Features/signup/data/repos/signup_repo.dart';
import 'package:recepo/Features/signup/logic/signup_cubit/signup_cubit.dart';

// TODO: If there was an error, so make it here await an make the {DioFactory} Future.

final getIt = GetIt.instance;
Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // Login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // Signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));

  // Update User Profile Repo & Cubit
  // getIt.registerLazySingleton<UpdateUserProfileRepo>(
  //     () => UpdateUserProfileRepo(getIt()));
  // getIt.registerFactory<UpdateUserProfileCubit>(
  //     () => UpdateUserProfileCubit(getIt()));
}
