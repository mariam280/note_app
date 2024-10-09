import 'package:flutter/material.dart';
import 'package:note_app/widgets/Home_note_widget.dart';
import 'package:note_app/widgets/add_noteitem.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NoteViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              context: context,
              builder: (context) {
                return AddNoteModalSheet();
              });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
