import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/read_note_cubit/read_note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/custom_noteitem.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadNoteCubit, ReadNoteState>(builder: (context, state) {
      List<NoteModel> notes =
          BlocProvider.of<ReadNoteCubit>(context).notes ?? [];
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: CustomNoteItem(
                  note: notes[index],
                ),
              );
            }),
      );
    });
  }
}
