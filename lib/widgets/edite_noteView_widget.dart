import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_appBar.dart';
import 'package:note_app/widgets/custom_textfield.dart';

class EditeNoteBody extends StatelessWidget {
  const EditeNoteBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CustomAppBar(
            title: 'Notes Edit',
            icon: Icons.check,
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextField(
            hint: 'Title',
          ),
          SizedBox(
            height: 32,
          ),
          CustomTextField(hint: 'Content', maxLines: 5),
        ],
      ),
    );
  }
}
