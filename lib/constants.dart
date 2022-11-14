import 'package:flutter/material.dart';
import 'package:gdsc/Screens/authentication_screens/login_screen.dart';
import 'package:gdsc/Screens/authentication_screens/signup_screen.dart';
import 'package:gdsc/Screens/authentication_screens/welcome_screen.dart';
import 'package:gdsc/Screens/splash_screen.dart';

double width(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double height(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

Map<String, Widget Function(BuildContext)> routes = {
  SplashScreen.id : (context) => const SplashScreen(),
  WelcomeScreen.id : (context) => const WelcomeScreen(),
  LoginScreen.id : (context) => const LoginScreen(),
  SignUpScreen.id : (context) => const SignUpScreen(),
  // SignupPage.id : (context) => SignupPage(),
  // LoginScreen.id : (context) => LoginScreen(),
};

