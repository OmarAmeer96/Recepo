import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recepo/Core/helpers/assets.dart';
import 'package:recepo/Core/theming/colors_manager.dart';
import 'package:recepo/Features/onboarding/presentation/views/onboarding_view.dart';

class SplashView1 extends StatelessWidget {
  const SplashView1({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Lottie.asset(AssetsData.splashJson),
      backgroundColor: ColorsManager.scaffoldBackgroundColor,
      nextScreen: const OnboardingView(),
      splashIconSize: 200,
      duration: 3000,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
    );
  }
}
