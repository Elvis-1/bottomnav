import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  BottomNav(
      {super.key,
      required this.icon,
      required this.iconColor,
      required this.index,
      required this.onTap});
  IconData icon;
  int index;
  void Function()? onTap;
  Color iconColor;
  @override
  Widget build(
    BuildContext context,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Icon(
          icon,
          color: iconColor,
        ),
      ),
    );
  }
}
