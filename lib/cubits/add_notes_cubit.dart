import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_notes/constans.dart';
import 'package:flutter_notes/cubits/add_notes_states.dart';
import 'package:flutter_notes/model/notes_model.dart';
import 'package:hive_ce_flutter/hive_ce_flutter.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());

  addNote(NotesModel notes) async {
    try {
      var notesBox = Hive.box<NotesModel>(kNotesBox);

      await notesBox.add(notes);

      emit(AddNotesSuccess());
    } catch (e) {
      emit(AddNotesFailure(e.toString()));
    }
  }
}
