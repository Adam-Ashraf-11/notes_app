import 'package:flutter/material.dart';
import 'package:flutter_notes/widget/custom_textField.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 40),
          CustomTextField(hint: 'title'),
          SizedBox(height: 20),
          CustomTextField(hint: "Content", maxLines: 8),
        ],
      ),
    );
  }
}
