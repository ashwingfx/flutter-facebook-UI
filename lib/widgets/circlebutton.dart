import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  //const CircleButton({Key? key}) : super(key: key);
  final IconData cirbtnIcon;
  final void Function() cirBtnAction;
  final Color cirBtnColor;

  CircleButton({
    required this.cirbtnIcon,
    required this.cirBtnAction,
    this.cirBtnColor=Colors.black87,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(3),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey.shade400,
      ),
      child: IconButton(
        onPressed: cirBtnAction,
        icon: Icon(cirbtnIcon),
        color: cirBtnColor,
      ),
    );
  }
}
