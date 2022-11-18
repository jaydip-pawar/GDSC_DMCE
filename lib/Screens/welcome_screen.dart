import 'package:flutter/material.dart';
import 'package:gdsc/Animation/animator.dart';
import 'package:gdsc/Screens/authentication_screens/login_screen.dart';
import 'package:gdsc/Screens/authentication_screens/signup_screen.dart';
import 'package:gdsc/widgets/bubble.dart';
import 'package:gdsc/widgets/gdsc_dmce.dart';
import 'package:gdsc/widgets/gdsc_text.dart';
import 'package:gdsc/Screens/authentication_screens/widgets/lrp_button.dart';
import 'package:gdsc/constants.dart';

class WelcomeScreen extends StatelessWidget {
  static const String id = 'welcome-screen';

  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          alignment: Alignment.center,
          children: [
            Bubble(
              top: -58,
              right: -24,
              opacity: 0.3700000047683716,
              r: 8,
              g: 169,
              b: 71,
              size: height(context) * .21,
            ),
            Bubble(
              top: 0,
              right: -89,
              opacity: 0.4000000059604645,
              r: 31,
              g: 133,
              b: 250,
              size: height(context) * .22,
            ),
            Positioned(
              top: height(context) * .18,
              child: const GDSC_DMCE(),
            ),
            Positioned(
              top: height(context) * .48,
              child: SizedBox(
                width: width(context) * .75,
                height: 160,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Let’s get started!!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(13, 52, 60, 1),
                        fontSize: 17.28,
                        fontWeight: FontWeight.w600,
                        height: 1,
                      ),
                    ),
                    const SizedBox(height: 20),
                    LRPButton(
                      height: 41.6,
                      bgColor: const Color(0xff0F0E47),
                      btnName: 'LOG IN',
                      function: () {
                        Navigator.of(context).push(
                            Animator().leftToRightSN(const LoginScreen()));
                      },
                    ),
                    const SizedBox(height: 15),
                    LRPButton(
                      height: 41.6,
                      bgColor: const Color(0xff1F85FA),
                      btnName: 'REGISTER',
                      function: () {
                        Navigator.of(context).push(
                            Animator().leftToRightSN(const SignUpScreen()));
                      },
                    ),
                  ],
                ),
              ),
            ),
            Bubble(
              bottom: height(context) * 0.033,
              left: -45,
              opacity: 0.38999998569488525,
              r: 254,
              g: 182,
              b: 0,
              size: height(context) * 0.17,
            ),
            Bubble(
              left: -23,
              bottom: -54,
              opacity: 0.33000001311302185,
              r: 252,
              g: 42,
              b: 36,
              size: height(context) * .24,
            ),
            const GDSC_Text(),
          ],
        ),
      ),
    );
  }
}
