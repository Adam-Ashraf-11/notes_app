import 'package:flutter/material.dart';
import 'package:flutter_notes/widget/custom_app_bar.dart';
import 'package:flutter_notes/widget/notes_listViewBuilder.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 50),
            CustomAppBar(),
            Expanded(child: NotesListView()),
          ],
        ),
      );
  }
}