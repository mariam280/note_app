import 'package:flutter/material.dart';
import 'package:note_app/widgets/addnote_form.dart';

class AddNoteModalSheet extends StatelessWidget {
  const AddNoteModalSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}
