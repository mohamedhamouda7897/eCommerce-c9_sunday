import 'package:e_commerce_c9_sunday/config/routes/routes.dart';
import 'package:e_commerce_c9_sunday/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: (settings) => AppRouter.onGenerate(settings),
        theme: LoginAndSignUpStyles.LightThemedata,
      ),
    );
  }
}
