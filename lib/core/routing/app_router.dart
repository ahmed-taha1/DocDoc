import 'package:doc_doc/core/routing/routes.dart';
import 'package:doc_doc/features/OnBoarding/on_boarding_screen.dart';
import 'package:flutter/material.dart';

import '../../features/login/ui/LoginScreen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) =>const LoginScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
