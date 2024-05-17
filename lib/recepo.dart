import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recepo/Core/routing/app_router.dart';
import 'package:recepo/Core/routing/routes.dart';
import 'package:recepo/Core/theming/colors_manager.dart';

class Recepo extends StatelessWidget {
  // final GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

  final AppRouter appRouter;
  const Recepo({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      // GetMaterialApp
      child: MaterialApp(
        // Animation
        // home: Scaffold(
        //   backgroundColor: Colors.white,
        //   body: Center(
        //     child: LoadingAnimation(),
        //   ),
        // ),
        debugShowCheckedModeBanner: false,
        title: 'Appointment App',
        onGenerateRoute: appRouter.generateRoute,
        // navigatorKey: navKey,
        theme: ThemeData(
          primaryColor: ColorsManager.mainBlue,
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: Routes.splashView1,
      ),
    );
  }
}
