import 'package:flutter/material.dart';
import 'package:note_app/widgets/Home_note_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NoteViewBody(),
    );
  }
}
