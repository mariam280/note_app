import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/read_note_cubit/read_note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/colors_listview.dart';
import 'package:note_app/widgets/custom_appBar.dart';
import 'package:note_app/widgets/custom_textfield.dart';

class EditeNoteBody extends StatefulWidget {
  const EditeNoteBody({Key? key, required this.note}) : super(key: key);
  final NoteModel note;

  @override
  State<EditeNoteBody> createState() => _EditeNoteBodyState();
}

class _EditeNoteBodyState extends State<EditeNoteBody> {
  String? title, content;
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
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<ReadNoteCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            title: 'Notes Edit',
            icon: Icons.check,
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextField(
            onChange: (value) {
              title = value;
            },
            hint: widget.note.title,
          ),
          SizedBox(
            height: 32,
          ),
          CustomTextField(
              onChange: (value) {
                content = value;
              },
              hint: widget.note.subTitle,
              maxLines: 5),
          SizedBox(
            height: 32,
          ),
          EditColorsListView(
            note: widget.note,
          ),
        ],
      ),
    );
  }
}

class EditColorsListView extends StatefulWidget {
  const EditColorsListView({Key? key, required this.note}) : super(key: key);
  final NoteModel note;
  @override
  State<EditColorsListView> createState() => _EditColorsListViewState();
}

class _EditColorsListViewState extends State<EditColorsListView> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: kColors.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  widget.note.color = kColors[index].value;
                  setState(() {});
                },
                child: ColorItem(
                  color: kColors[index],
                  isActive: currentIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
