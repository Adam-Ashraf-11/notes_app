import 'package:flutter/material.dart';
import 'package:flutter_notes/widget/notes_body_cotainer.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: NotesBodyCotainer(),
          );
        },
      ),
    );
  }
}
