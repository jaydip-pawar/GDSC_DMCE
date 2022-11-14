import 'package:flutter/material.dart';
import 'package:gdsc/Screens/authentication_screens/login_screen.dart';
import 'package:gdsc/Screens/authentication_screens/signup_screen.dart';
import 'package:gdsc/Screens/authentication_screens/widgets/gdsc_dmce.dart';
import 'package:gdsc/Screens/authentication_screens/widgets/gdsc_text.dart';
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
            Positioned(
              top: -58,
              right: -24,
              child: Center(
                child: Container(
                    width: height(context) * .21,
                    height: height(context) * .21,
                    decoration: BoxDecoration(
                      color:
                          const Color.fromRGBO(8, 169, 71, 0.3700000047683716),
                      borderRadius: BorderRadius.all(Radius.elliptical(
                          height(context) * .21, height(context) * .21)),
                    )),
              ),
            ),
            Positioned(
              top: 0,
              right: -89,
              child: Container(
                width: height(context) * .22,
                height: height(context) * .22,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(31, 133, 250, 0.4000000059604645),
                  borderRadius: BorderRadius.all(Radius.elliptical(
                      height(context) * .22, height(context) * .22)),
                ),
              ),
            ),
            Positioned(
              top: height(context) * .18,
              child: const GDSC_DMCE(),
            ),
            Positioned(
              bottom: height(context) * .25,
              child: SizedBox(
                width: width(context) * .75,
                height: height(context) * .23,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Let’s get started!!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color.fromRGBO(13, 52, 60, 1),
                        fontSize: width(context) * .045,
                        fontWeight: FontWeight.normal,
                        height: 1,
                      ),
                    ),
                    const SizedBox(height: 25),
                    LRPButton(
                      height: height(context) * .058,
                      bgColor: const Color(0xff0F0E47),
                      btnName: 'LOG IN',
                      function: () {
                        Navigator.pushNamed(context, LoginScreen.id);
                      },
                    ),
                    const SizedBox(height: 25),
                    LRPButton(
                      height: height(context) * .058,
                      bgColor: const Color(0xff1F85FA),
                      btnName: 'REGISTER',
                      function: () {
                        Navigator.pushNamed(context, SignUpScreen.id);
                      },
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: height(context) * 0.033,
              left: -45,
              child: Container(
                width: height(context) * 0.17,
                height: height(context) * 0.17,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(254, 182, 0, 0.38999998569488525),
                  borderRadius: BorderRadius.all(
                    Radius.elliptical(
                        height(context) * 0.17, height(context) * 0.17),
                  ),
                ),
              ),
            ),
            Positioned(
              left: -23,
              bottom: -54,
              child: Container(
                width: height(context) * .24,
                height: height(context) * .24,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(252, 42, 36, 0.33000001311302185),
                  borderRadius: BorderRadius.all(
                    Radius.elliptical(
                      height(context) * .24,
                      height(context) * .24,
                    ),
                  ),
                ),
              ),
            ),
            const GDSC_Text(),
          ],
        ),
      ),
    );
  }
}
