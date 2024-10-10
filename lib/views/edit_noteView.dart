import 'package:flutter/material.dart';
import 'package:note_app/widgets/edite_noteView_widget.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditeNoteBody(),
    );
  }
}
