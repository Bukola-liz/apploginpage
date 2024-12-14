import 'package:apploginassignment/features/home/home_screen.dart';
import 'package:apploginassignment/features/login/login_screen.dart';
import 'package:apploginassignment/features/navigation/route_strings.dart';
import 'package:apploginassignment/features/signup/signup_screen.dart';
import 'package:flutter/cupertino.dart';

Route appRouter(RouteSettings settings) {

  switch (settings.name) {
    case AppRouteStrings.base:
      return CupertinoPageRoute(builder: (_) => HomeScreen());

    case AppRouteStrings.loginScreen:
      return CupertinoPageRoute(builder: (_) => const LoginScreen());

    case AppRouteStrings.signupScreen:
      return CupertinoPageRoute(builder: (_) => const SignupScreen());

    default:
    return CupertinoPageRoute(builder: (_)=> HomeScreen());
  }

} 