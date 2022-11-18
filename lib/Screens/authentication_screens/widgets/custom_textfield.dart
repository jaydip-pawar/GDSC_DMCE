import 'package:flutter/material.dart';
import 'package:gdsc/constants.dart';

class CTextField extends StatefulWidget {
  final String labelText, hintText;
  final bool isObscure;

  const CTextField({Key? key, required this.labelText, required this.hintText, required this.isObscure})
      : super(key: key);

  @override
  State<CTextField> createState() => _CTextFieldState();
}

class _CTextFieldState extends State<CTextField> {

  late bool _obscureText;

  @override
  void initState() {
    _obscureText = widget.isObscure;
    super.initState();
  }

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {

    return TextFormField(
      style: const TextStyle(
          fontFamily: "Poppins", fontSize: 16, color: Color(0xff000000)),
      obscureText: _obscureText,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20, height(context) * .0245, 0, height(context) * .0245),
        filled: true,
        fillColor: Colors.white,
        hintStyle: const TextStyle(
          fontFamily: "Poppins",
          fontSize: 16,
        ),
        labelStyle: const TextStyle(
          fontFamily: "Poppins",
          fontSize: 16,
        ),
        border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xff1F85FA),
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(16)),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xff1F85FA),
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(16)),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xff1F85FA),
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xffe32121),
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        labelText: widget.labelText,
        hintText: widget.hintText,
        suffixIcon: widget.isObscure ? InkWell(
          onTap: () => _toggle(),
          child: Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
        ) : null,
      ),
    );
  }
}
