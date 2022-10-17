import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final Function onPressed;
  final IconData icon;
  final double iconSize;
  const CircleButton(
      {Key? key,
      required this.icon,
      required this.onPressed,
      this.iconSize = 30.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: onPressed as void Function()?,
        icon: Icon(
          icon,
          size: iconSize,
          color: Colors.black,
        ),
      ),
    );
  }
}
