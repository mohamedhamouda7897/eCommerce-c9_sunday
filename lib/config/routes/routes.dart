import 'package:e_commerce_c9_sunday/featuers/login/presentation/pages/login_screen.dart';
import 'package:flutter/material.dart';

import '../../featuers/home/presentation/pages/home_page/main_page.dart';
import '../../featuers/signup/presentation/pages/signup_screen.dart';

class RoutesName {
  static const String login = "login";
  static const String signup = "singUp";
  static const String home = "/";
}

class AppRouter {
  static Route onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.login:
        return MaterialPageRoute(
          builder: (context) => LoginScreen(),
        );
      case RoutesName.signup:
        return MaterialPageRoute(
          builder: (context) => SignupScreen(),
        );
      case RoutesName.home:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => unDefineRoute(),
        );
    }
  }

  static Widget unDefineRoute() {
    return Scaffold(
      appBar: AppBar(
        title: Text("UnDefine Route"),
      ),
      body: Center(
        child: Text("Route Not found"),
      ),
    );
  }
}
