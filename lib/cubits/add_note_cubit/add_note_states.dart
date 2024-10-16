part of 'add_note_cubit.dart';

class NoteState {}

class AddNoteInitial extends NoteState {}

class AddNoteLoading extends NoteState {}

class AddNoteSuccess extends NoteState {}

class AddNoteFailure extends NoteState {
  final String errorMessage;

  AddNoteFailure(this.errorMessage);
}
