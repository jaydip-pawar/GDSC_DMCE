import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gdsc/constants.dart';

class GDSC_DMCE extends StatelessWidget {
  const GDSC_DMCE({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width(context) * .92,
      height: 113.99996185302734,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            child: SvgPicture.asset(
              'assets/images/logo.svg',
              height: 45,
              width: 100,
            ),
          ),
          Positioned(
            top: 69.6552734375,
            left: 0,
            child: SizedBox(
              height: 44.3447265625,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 27.3447265625,
                    left: 41,
                    child: Text(
                      'Datta Meghe College Of Engineering',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: const Color.fromRGBO(64, 64, 64, 1),
                        fontFamily: 'Sora',
                        fontSize: width(context) * .03777,
                        fontWeight: FontWeight.normal,
                        height: 1,
                      ),
                    ),
                  ),
                  Positioned(
                    child: RichText(
                      text: TextSpan(
                          style: TextStyle(
                            fontFamily: 'Sora',
                            fontSize: width(context) * .055,
                            fontWeight: FontWeight.normal,
                            height: 1,
                          ),
                          children: const <TextSpan>[
                            TextSpan(
                              text: 'Google',
                              style:
                              TextStyle(color: Color(0xff1F85FA)),
                            ),
                            TextSpan(
                              text: ' Developer',
                              style:
                              TextStyle(color: Color(0xffFC2B25)),
                            ),
                            TextSpan(
                              text: ' Student',
                              style:
                              TextStyle(color: Color(0xff09A947)),
                            ),
                            TextSpan(
                              text: ' Clubs',
                              style:
                              TextStyle(color: Color(0xffFEB700)),
                            ),
                          ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
