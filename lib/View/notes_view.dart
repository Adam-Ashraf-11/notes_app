import 'package:flutter/material.dart';
import 'package:flutter_notes/widget/custom_app_bar.dart';
import 'package:flutter_notes/widget/notes_body_cotainer.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(children: [SizedBox(height: 50), CustomAppBar() ,SizedBox(height: 30,) , NotesBodyCotainer()]),
      ),
    );
  }
}
