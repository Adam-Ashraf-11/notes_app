import 'package:flutter/material.dart';
import 'package:flutter_notes/constans.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.hint, this.maxLines = 1, this.onSaved});
  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved ;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved:onSaved,
      validator: (value) {
        if(value?.isEmpty ?? true){
        return "Field is required" ;
        }
        return null;
      },
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      cursorWidth: 2,
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
