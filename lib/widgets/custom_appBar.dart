import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_iconAppBar.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {Key? key, required this.title, required this.icon, this.onPressed})
      : super(key: key);
  final String title;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 24),
        ),
        Spacer(
          flex: 1,
        ),
        IconAppBar(
          onPressed: onPressed,
          icon: icon,
        ),
      ],
    );
  }
}
