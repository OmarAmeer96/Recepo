import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:recepo/Core/helpers/assets.dart';
import 'package:recepo/Core/helpers/extensions.dart';
import 'package:recepo/Core/routing/routes.dart';
import 'package:recepo/Core/theming/colors_manager.dart';
import 'package:recepo/Core/theming/styles.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      finishButtonText: 'Get Started',
      onFinish: () {
        context.pushReplacementNamed(Routes.loginView);
      },
      finishButtonStyle: FinishButtonStyle(
        backgroundColor: ColorsManager.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      skipTextButton: const Text(
        'Skip',
        style: TextStyle(
          fontSize: 16,
          color: ColorsManager.primaryColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      controllerColor: const Color(0xff1D272F),
      totalPage: 3,
      headerBackgroundColor: Colors.white,
      pageBackgroundColor: Colors.white,
      background: [
        Image.asset(
          AssetsData.onboarding1,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.5,
        ),
        Image.asset(
          AssetsData.onboarding2,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.5,
        ),
        Image.asset(
          AssetsData.onboarding3,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.5,
        ),
      ],
      speed: 1.8,
      pageBodies: [
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.58,
              ),
              Text(
                'Find What You Need, Fast',
                textAlign: TextAlign.center,
                style: Styles.onboardingTitleFont,
                // TextStyle(
                //   color: Color(0xff191D31),
                //   fontSize: 24.0,
                //   fontWeight: FontWeight.w600,
                // ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Search through thousands of products from your favorite brands and local stores.  Filter by category, price, and more to find exactly what you're looking for.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black26,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.58,
              ),
              const Text(
                'Shop with Ease',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff191D31),
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Add items to your cart, checkout securely, and track your order every step of the way.  Enjoy hassle-free shopping with our user-friendly interface.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black26,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.58,
              ),
              const Text(
                'Get It Delivered, Right to Your Door',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff191D31),
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Choose your preferred delivery method and time slot.  Relax and wait for your items to arrive at your doorstep, delivered safely and on time.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black26,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
