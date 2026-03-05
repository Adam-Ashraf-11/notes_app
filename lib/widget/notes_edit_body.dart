import 'package:flutter/material.dart';
import 'package:flutter_notes/widget/custom_app_bar.dart';
import 'package:flutter_notes/widget/custom_textField.dart';

class NotesEditBody extends StatelessWidget {
  const NotesEditBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(icon: Icons.check, title: "Edit Notes"),
          SizedBox(height: 50),
          CustomTextFormField(hint: "title"),
          SizedBox(height: 20),
          CustomTextFormField(hint: "Content", maxLines: 5),
        ],
      ),
    );
  }
}
