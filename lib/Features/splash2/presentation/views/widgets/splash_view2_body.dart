import 'package:flutter/material.dart';
import 'package:recepo/Core/routing/routes.dart';
import 'package:recepo/Core/utils/extensions.dart';
import 'package:recepo/Features/splash2/presentation/views/widgets/fading_logo.dart';
import 'package:recepo/Features/splash2/presentation/views/widgets/sliding_text.dart';

class SplashView2Body extends StatefulWidget {
  const SplashView2Body({super.key});

  @override
  State<SplashView2Body> createState() => _SplashView2BodyState();
}

class _SplashView2BodyState extends State<SplashView2Body>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  late Animation<double> opacityAnimation;

  @override
  void initState() {
    super.initState();
    initAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Hero(
          tag: "splashView2ToHomeView",
          child: FadingLogo(
            opacityAnimation: opacityAnimation,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SlidingText(
          slidingAnimation: slidingAnimation,
          opacityAnimation: opacityAnimation,
        ),
      ],
    );
  }

  void initAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    // Sliding Animation
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
            .animate(animationController);

    // Opacity Animation
    opacityAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.5, 1.0),
      ),
    );
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        context.pushReplacementNamed(Routes.onboardingView);
      },
    );
  }
}
