import 'package:e_commerce_app/features/home/presentation/pages/home.dart';
import 'package:e_commerce_app/features/login/presentation/pages/login_screen.dart';
import 'package:e_commerce_app/features/signup/presentation/pages/signup.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static const String login = "login";
  static const String signup = "/";
  static const String home = "Home";
}

class Routes {
  static Route onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case AppRoute.login:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
      case AppRoute.signup:
       return MaterialPageRoute(
          builder: (context) => const SignUpScreen(),
        );
      case AppRoute.home:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(
              title: const Text('un defined'),
            ),
          body: unDefinedRoute(),
        ));
    }
  }
}
   Widget unDefinedRoute(){
  return Container(
  child: const Center(child: Text('route not found')),
  );
}
