import 'package:flutter/material.dart';
Widget headerButton({
  required String btnText,
  required IconData btnIcon,
  required Color btnColor,
}) {
  return TextButton.icon(
    onPressed: () {},
    icon: Icon(
      btnIcon,
      color: btnColor,
    ),
    label: Text(btnText),
  );
}