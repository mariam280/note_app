import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:note_app/models/note_model.dart';
//import 'package:note_app/cubits/notescubit/notes_states.dart';

part 'add_note_states.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(AddNoteInitial());
  Color color = Color(0xffD1BCE3);
  addNote(NoteModel note) async {
    note.color = color!.value;
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>('notes_box');
      await notesBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
