import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/read_note_cubit/read_note_cubit.dart';
import 'package:note_app/widgets/custom_appBar.dart';
import 'package:note_app/widgets/custom_noteitem.dart';
import 'package:note_app/widgets/note_listview.dart';

class NoteViewBody extends StatefulWidget {
  const NoteViewBody({Key? key}) : super(key: key);

  @override
  State<NoteViewBody> createState() => _NoteViewBodyState();
}

class _NoteViewBodyState extends State<NoteViewBody> {
  @override
  void initState() {
    BlocProvider.of<ReadNoteCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          CustomAppBar(
            title: 'Notes',
            icon: Icons.search,
          ),
          SizedBox(
            height: 25,
          ),
          Expanded(child: NoteListView()),
        ],
      ),
    );
  }
}
