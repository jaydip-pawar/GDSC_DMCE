import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gdsc/Screens/authentication_screens/login_screen.dart';
import 'package:gdsc/Screens/authentication_screens/widgets/custom_textfield.dart';
import 'package:gdsc/Screens/authentication_screens/widgets/lrp_button.dart';
import 'package:gdsc/constants.dart';
import 'package:gdsc/widgets/back_button.dart';
import 'package:gdsc/widgets/bubble.dart';
import 'package:gdsc/widgets/gdsc_text.dart';

class SignUpScreen extends StatelessWidget {
  static const String id = 'signup-screen';

  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.center,
        children: [
          const Positioned(
            top: 35,
            left: 10,
            child: Back_Button(
              wantText: true,
              text: "Register",
            ),
          ),
          Positioned(
            top: height(context) * .145,
            left: 0,
            child: Center(
              child: SizedBox(
                width: width(context),
                height: height(context) * .9,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/images/logo.svg',
                          height: height(context) * .059,
                          width: width(context) * .28,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have account?",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: const Color(0xff909090),
                                  fontSize: width(context) * .04,
                                  fontFamily: "Poppins"),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, LoginScreen.id);
                              },
                              style: TextButton.styleFrom(
                                padding: const EdgeInsets.only(left: 5, right: 5),
                                alignment: Alignment.centerLeft,
                              ),
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  color: const Color(0xff000000),
                                  fontSize: width(context) * .04,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Poppins",
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: height(context) * .047),
                        const CTextField(
                          labelText: "Full Name",
                          hintText: "Enter Full Name",
                          isObscure: false,
                        ),
                        SizedBox(height: height(context) * .026),
                        const CTextField(
                          labelText: "Email Address",
                          hintText: "Enter Email Address",
                          isObscure: false,
                        ),
                        SizedBox(height: height(context) * .026),
                        const CTextField(
                          labelText: "Phone Number",
                          hintText: "Enter Phone Number",
                          isObscure: false,
                        ),
                        SizedBox(height: height(context) * .0386),
                        LRPButton(
                          height: height(context) * .073,
                          bgColor: const Color(0xff1F85FA),
                          btnName: "Proceed",
                          function: () {},
                        ),
                        SizedBox(height: height(context) * .026),
                        Row(
                          children: const [
                            Expanded(
                                child: Divider(
                              thickness: 2,
                              height: 0,
                            )),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Text(
                                'Or',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff404040),
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  height: 1,
                                ),
                              ),
                            ),
                            Expanded(
                                child: Divider(
                              thickness: 2,
                              height: 0,
                            )),
                          ],
                        ),
                        SizedBox(height: height(context) * .026),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: SvgPicture.asset(
                                "assets/images/google.svg",
                                height: height(context) * .0618,
                                width: height(context) * .0618,
                              ),
                            ),
                            const SizedBox(width: 30),
                            InkWell(
                              onTap: () {},
                              child: SvgPicture.asset(
                                "assets/images/twitter.svg",
                                height: height(context) * .0618,
                                width: height(context) * .0618,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Bubble(
            bottom: height(context) * -0.014,
            right: width(context) * -0.175,
            size: height(context) * 0.235,
            opacity: 0.4000000059604645,
            r: 31,
            g: 133,
            b: 250,
          ),
          Bubble(
            bottom: height(context) * -0.084,
            right: width(context) * -0.021,
            size: height(context) * 0.22,
            opacity: 0.3700000047683716,
            r: 8,
            g: 169,
            b: 71,
          ),
          const GDSC_Text(),
        ],
      ),
    );
  }
}
