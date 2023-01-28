import 'package:flutter/material.dart';
import '../assets.dart';
import '../widgets/avatar.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(avtarImage: dulkar,statusIndicator: false,),
      title: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: "What's on your mind?",
          hintStyle: TextStyle(color: Colors.grey),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}
