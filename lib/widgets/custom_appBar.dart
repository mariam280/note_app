import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Notes',
          style: TextStyle(fontSize: 24),
        ),
        Spacer(
          flex: 1,
        ),
        IconAppBar(),
      ],
    );
  }
}

class IconAppBar extends StatelessWidget {
  const IconAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(.1),
      ),
      child: Icon(Icons.search),
    );
  }
}
