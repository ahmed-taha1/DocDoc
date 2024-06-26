import 'package:doc_doc/core/di/dependency_injection.dart';
import 'package:doc_doc/core/routing/routes.dart';
import 'package:doc_doc/features/home/ui/home_screen.dart';
import 'package:doc_doc/features/login/logic/cubit/login_cubit.dart';
import 'package:doc_doc/features/on_boarding/on_boarding_screen.dart';
import 'package:doc_doc/features/signup/logic/signup_cubit.dart';
import 'package:doc_doc/features/signup/ui/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/login/ui/login_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // this argument is used to pass data between screens
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
        case Routes.signupScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignupScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
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
