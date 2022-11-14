import 'package:flutter/material.dart';
import 'package:gdsc/constants.dart';

class GDSC_Text extends StatelessWidget {
  const GDSC_Text({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: height(context) * .05,
        child: const Text(
          '@gdsc.dmce',
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Color.fromRGBO(112, 112, 112, 1),
            fontFamily: 'Sora',
            fontSize: 13.597343444824219,
            fontWeight: FontWeight.normal,
            height: 1,
          ),
        ),
      );
  }
}
