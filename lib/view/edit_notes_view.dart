import 'package:flutter/material.dart';
import 'package:flutter_notes/widget/notes_edit_body.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotesEditBody()
    );
  }
}