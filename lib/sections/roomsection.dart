import 'package:facebookui/assets.dart';
import 'package:flutter/material.dart';

import '../widgets/avatar.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          RoomButton(),
          Avatar(
            avtarImage: dulkar,
            statusIndicator: true,
          ),
          Avatar(
            avtarImage: vinayak,
            statusIndicator: true,
          ),
          Avatar(
            avtarImage: asif,
            statusIndicator: true,
          ),
          Avatar(
            avtarImage: fahad,
            statusIndicator: true,
          ),
          Avatar(
            avtarImage: vijay,
            statusIndicator: true,
          ),
          Avatar(
            avtarImage: tovino,
            statusIndicator: true,
          ),
          Avatar(
            avtarImage: dulkar,
            statusIndicator: true,
          ),
          Avatar(
            avtarImage: vinayak,
            statusIndicator: true,
          ),
        ],
      ),
    );
  }
}

Widget RoomButton() {
  return Container(
    padding: EdgeInsets.only(
      right: 5,
      left: 5,
    ),
    child: OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        shape: StadiumBorder(),
        side: BorderSide(
          color: Colors.blueAccent,
          width: 2,
        ),
      ),
      onPressed: () {},
      icon: Icon(
        Icons.video_call,
        color: Colors.purple,
      ),
      label: Text("Chat\nRoom"),
    ),
  );
}
