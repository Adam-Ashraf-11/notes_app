import 'package:flutter/material.dart';
import 'package:flutter_notes/widget/custom_Container_button.dart';
import 'package:flutter_notes/widget/custom_textField.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40),
            CustomTextField(hint: 'title'),
            SizedBox(height: 20),
            CustomTextField(hint: "Content", maxLines: 8),
            SizedBox(height: 80),
            CustomContainerButton(),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
