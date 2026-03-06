import 'package:flutter/material.dart';
import 'package:flutter_notes/constans.dart';
import 'package:flutter_notes/model/notes_model.dart';
import 'package:flutter_notes/view/notes_view.dart';
import 'package:hive_ce_flutter/hive_ce_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 await  Hive.initFlutter();
 await  Hive.openBox(kNotesBox);
 Hive.registerAdapter(NotesModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
      home: const NotesView(),
    );
  }
}
