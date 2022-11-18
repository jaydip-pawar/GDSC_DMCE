import 'package:flutter/material.dart';

class Back_Button extends StatelessWidget {
  final bool wantText;
  final String text;
  const Back_Button({Key? key, required this.wantText, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return wantText ? Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          // padding: EdgeInsets.zero,
          // constraints: BoxConstraints(),
          icon: const Icon(
            Icons.arrow_back_rounded,
            size: 28,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        const SizedBox(width: 10),
        Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            text,
            style: const TextStyle(
              color: Color.fromRGBO(0, 0, 0, 1),
              fontFamily: 'Poppins',
              fontSize: 25,
              fontWeight: FontWeight.w500,
              height: 1,
            ),
          ),
        )
      ],
    ) : IconButton(
      icon: const Icon(
        Icons.arrow_back_rounded,
        size: 28,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}
