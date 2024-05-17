import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recepo/Core/di/dependency_injection.dart';
import 'package:recepo/Core/routing/app_router.dart';
import 'package:recepo/Core/routing/routes.dart';
import 'package:recepo/Core/theming/colors_manager.dart';
import 'package:recepo/Features/home/logic/product_cubit/products_cubit.dart';
import 'package:recepo/Features/login/logic/login_cubit/login_cubit.dart';

class Recepo extends StatelessWidget {
  // final GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

  final AppRouter appRouter;
  const Recepo({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider<LoginCubit>(
            create: (context) => getIt<LoginCubit>(),
          ),
          BlocProvider<ProductsCubit>(
            create: (context) => getIt<ProductsCubit>(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Appointment App',
          onGenerateRoute: appRouter.generateRoute,
          // navigatorKey: navKey,
          theme: ThemeData(
            primaryColor: ColorsManager.mainBlue,
            scaffoldBackgroundColor: Colors.white,
          ),
          initialRoute: Routes.splashView2,
        ),
      ),
    );
  }
}
