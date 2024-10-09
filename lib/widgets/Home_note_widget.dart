import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_appBar.dart';
import 'package:note_app/widgets/custom_noteitem.dart';
import 'package:note_app/widgets/note_listview.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          CustomAppBar(),
          SizedBox(
            height: 25,
          ),
          Expanded(child: NoteListView()),
        ],
      ),
    );
  }
}
