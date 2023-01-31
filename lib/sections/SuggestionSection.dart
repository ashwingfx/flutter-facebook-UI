import 'package:flutter/material.dart';

import '../widgets/FriendSuggestion.dart';
class SuggestionSection extends StatelessWidget {
  const SuggestionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      color: Colors.blue,
      child: Column(
        children: [
          ListTile(
            leading: Text("People you may know"),
            trailing: Icon(Icons.more_horiz),
          ),
          Container(
            height: 340,
            //color: Colors.amber,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                FriendSuggestion(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
