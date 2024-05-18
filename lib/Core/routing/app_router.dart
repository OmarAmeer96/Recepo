import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recepo/Core/di/dependency_injection.dart';
import 'package:recepo/Core/routing/routes.dart';
import 'package:recepo/Core/shared_prefs/shared_prefs.dart';
import 'package:recepo/Core/shared_prefs/shred_prefs_constants.dart';
import 'package:recepo/Features/home/data/models/products_model.dart'; // Import Product model
import 'package:recepo/Features/home/presentation/views/edit_product_view.dart';
import 'package:recepo/Features/home/presentation/views/home_view.dart';
import 'package:recepo/Features/login/presentation/login_view.dart';
import 'package:recepo/Features/onboarding/presentation/views/onboarding_view.dart';
import 'package:recepo/Features/profile/logic/update_user_profile_cubit/update_user_profile_cubit.dart';
import 'package:recepo/Features/profile/presentation/views/user_edit_profile_view.dart';
import 'package:recepo/Features/signup/logic/signup_cubit/signup_cubit.dart';
import 'package:recepo/Features/signup/presentation/signup_view.dart';
import 'package:recepo/Features/splash1/presentation/views/splash_view1.dart';
import 'package:recepo/Features/splash2/presentation/views/splash_view2.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.splashView1:
        return MaterialPageRoute(
          builder: (_) => const SplashView1(),
        );
      case Routes.splashView2:
        return MaterialPageRoute(
          builder: (_) => const SplashView2(),
        );
      case Routes.onboardingView:
        return MaterialPageRoute(
          builder: (_) {
            if (SharedPrefs.getString(key: kToken) == null) {
              return const OnboardingView();
            } else if ((SharedPrefs.getString(key: kRole) == 'USER') &&
                (SharedPrefs.getString(key: kToken) != null)) {
              return const HomeView();
            } else {
              return const OnboardingView();
            }
          },
        );
      case Routes.loginView:
        return MaterialPageRoute(
          builder: (_) => const LoginView(),
        );
      case Routes.signUpView:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignUpView(),
          ),
        );
      case Routes.homeView:
        return MaterialPageRoute(
          builder: (_) => const HomeView(),
        );
      case Routes.userEditProfileView:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<UpdateUserProfileCubit>(),
            child: const UserEditProfileView(),
          ),
        );
      case Routes.editProductView:
        return MaterialPageRoute(
          builder: (_) {
            final product = arguments as Product?;
            return EditProductView(product: product);
          },
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text(
                'No route defined for ${settings.name}',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        );
    }
  }
}
