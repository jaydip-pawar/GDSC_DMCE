import 'package:flutter/material.dart';
import 'package:gdsc/Screens/authentication_screens/widgets/gdsc_text.dart';
import 'package:gdsc/constants.dart';

class LoginScreen extends StatelessWidget {
  static const String id = 'login-screen';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 35,
            left: 10,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back_rounded,
                    size: 28,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(width: 10),
                const Text(
                  'Login',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Poppins',
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    height: 1,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: -13,
            right: -75,
            child: Container(
              width: height(context) * 0.235,
              height: height(context) * 0.235,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(31, 133, 250, 0.4000000059604645),
                borderRadius: BorderRadius.all(
                  Radius.circular(height(context) * 0.235),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -78,
            right: -9,
            child: Container(
              width: height(context) * 0.22,
              height: height(context) * 0.22,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(8, 169, 71, 0.3700000047683716),
                borderRadius: BorderRadius.all(
                  Radius.elliptical(
                      height(context) * 0.22, height(context) * 0.22),
                ),
              ),
            ),
          ),
          const GDSC_Text(),
        ],
      ),
    );
  }
}
