import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recepo/Core/di/dependency_injection.dart';
import 'package:recepo/Core/routing/routes.dart';
import 'package:recepo/Features/home/presentation/views/home_view.dart';
import 'package:recepo/Features/login/logic/login_cubit/login_cubit.dart';
import 'package:recepo/Features/login/presentation/login_view.dart';
import 'package:recepo/Features/onboarding/presentation/views/onboarding_view.dart';
import 'package:recepo/Features/signup/logic/signup_cubit/signup_cubit.dart';
import 'package:recepo/Features/signup/presentation/signup_view.dart';
import 'package:recepo/Features/splash1/presentation/views/splash_view1.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // This arguments to be passed in any screen like this: (arguments as ClassName).
    // final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.splashView1:
        return MaterialPageRoute(
          builder: (_) => const SplashView1(),
        );
      // case Routes.splashView2:
      //   return MaterialPageRoute(
      //     builder: (_) => const SplashView2(),
      //   );
      case Routes.onboardingView:
        return MaterialPageRoute(
          builder: (_) => const OnboardingView(),
        );
      case Routes.loginView:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginView(),
          ),
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
