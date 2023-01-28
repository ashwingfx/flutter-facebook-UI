import 'package:facebookui/assets.dart';
import 'package:facebookui/widgets/circlebutton.dart';
import 'package:flutter/material.dart';

import 'avatar.dart';

class StoryCards extends StatelessWidget {
  //const StoryCards({Key? key}) : super(key: key);

  final String storyText;
  final String storyImage;
  final String storyAvatar;
  final bool storyBtn;
  final bool storyBorder;

  StoryCards({
    required this.storyText,
    required this.storyImage,
    required this.storyAvatar,
    this.storyBtn = false,
    this.storyBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(right: 5, left: 5, top: 10, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(storyImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          storyBtn
              ? Positioned(
                  top: 5,
                  left: 5,
                  child: CircleButton(
                    cirbtnIcon: Icons.add,
                    cirBtnAction: () {},
                    cirBtnColor: Colors.blue,
                  ),
                )
              : Positioned(
                  top: 5,
                  child: Avatar(
                    avtarImage: storyAvatar,
                    displayBorder: storyBorder,
                  ),
                ),
          Positioned(
            bottom: 5,
            left: 8,
            child: Text(
              storyText,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
