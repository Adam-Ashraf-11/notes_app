import 'package:flutter/material.dart';
import 'package:flutter_notes/constans.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLines = 1});
  final String hint;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hint,
        border: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
        enabledBorder: buildBorder(),
      ),
    );
  }

//! buildBorder method.....
  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
