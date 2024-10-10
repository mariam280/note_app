import 'package:flutter/material.dart';

class IconAppBar extends StatelessWidget {
  const IconAppBar({Key? key, required this.icon}) : super(key: key);
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(.1),
      ),
      child: Icon(icon),
    );
  }
}
