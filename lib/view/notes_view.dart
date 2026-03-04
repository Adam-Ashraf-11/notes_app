import 'package:flutter/material.dart';
import 'package:flutter_notes/widget/bottom_sheet.dart';
import 'package:flutter_notes/widget/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return const AddNoteBottomSheet();
            },
          );
        },
        child: const Icon(
          Icons.add,
          color: const Color.fromARGB(255, 255, 255, 255),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(50),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      body: NotesViewBody(),
    );
  }
}
