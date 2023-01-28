import 'package:flutter/material.dart';
class ButtonHeader extends StatelessWidget {
  //const ButtonHeader({Key? key}) : super(key: key);

  final String btnText;
  final IconData btnIcon;
  final Color btnColor;

  ButtonHeader({required this.btnText,required this.btnIcon,required this.btnColor});
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: Icon(
        btnIcon,
        color:btnColor,
      ),
      label: Text(btnText),
    );
  }
  }

