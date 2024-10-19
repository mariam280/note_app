import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/cubits/read_note_cubit/read_note_cubit.dart';
import 'package:note_app/widgets/addnote_form.dart';

class AddNoteModalSheet extends StatefulWidget {
  const AddNoteModalSheet({
    Key? key,
  }) : super(key: key);

  @override
  State<AddNoteModalSheet> createState() => _AddNoteModalSheetState();
}

class _AddNoteModalSheetState extends State<AddNoteModalSheet> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NoteCubit(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BlocConsumer<NoteCubit, NoteState>(listener: (context, state) {
          if (state is AddNoteFailure) {
            // print('failed ${state.errorMessage}');
          }
          if (state is AddNoteSuccess) {
            BlocProvider.of<ReadNoteCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          }
        }, builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: SingleChildScrollView(child: AddNoteForm()),
            ),
          );
        }),
      ),
    );
  }
}
