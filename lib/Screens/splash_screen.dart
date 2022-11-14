import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gdsc/Screens/authentication_screens/welcome_screen.dart';
import 'package:gdsc/Screens/authentication_screens/widgets/gdsc_dmce.dart';
import 'package:gdsc/Screens/authentication_screens/widgets/gdsc_text.dart';

class SplashScreen extends StatefulWidget {
  static const String id = 'splash-screen';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    timer();
  }

  timer() {
    Timer(const Duration(seconds: 5),
            () => Navigator.pushReplacementNamed(context, WelcomeScreen.id));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.center,
          children: const [
            Positioned(
              child: GDSC_DMCE(),
            ),
            GDSC_Text(),
          ],
        ),
      ),
    );
  }
}