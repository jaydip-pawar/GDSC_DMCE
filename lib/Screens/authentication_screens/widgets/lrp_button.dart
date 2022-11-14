import 'package:flutter/material.dart';

class LRPButton extends StatelessWidget {
  final double height;
  final Color bgColor;
  final String btnName;
  final VoidCallback function;
  const LRPButton({Key? key, required this.height, required this.bgColor, required this.btnName, required this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: double.maxFinite,
      height: height,
      color: bgColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: SizedBox(
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              child: Text(
                btnName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              right: 0,
              child: Icon(
                Icons.keyboard_arrow_right,
                color: Colors.white,
                size: 18,
              ),
            ),
          ],
        ),
      ),
      onPressed: function,
    );
  }
}
