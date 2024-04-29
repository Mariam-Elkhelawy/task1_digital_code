import 'package:flutter/material.dart';
import 'package:task1_digital_code/cofig/routes/app_router_names.dart';
import 'package:task1_digital_code/core/components/reusable_components.dart';
import 'package:task1_digital_code/features/layout/layout.dart';
import 'package:task1_digital_code/features/login/login_screen.dart';
import 'package:task1_digital_code/features/sign_up/signup_screen.dart';

class AppRouter {
  static Route onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case AppRouterNames.login:
        return MaterialPageRoute(
            builder: (context) => const LoginScreen(), settings: settings);
      case AppRouterNames.register:
        return MaterialPageRoute(
            builder: (context) => const SignUpScreen(), settings: settings);
      case AppRouterNames.layout:
        return MaterialPageRoute(
            builder: (context) => const LayoutScreen(), settings: settings);
      default:
        return MaterialPageRoute(
            builder: (context) => unDefinedRoute(), settings: settings);
    }
  }
}
