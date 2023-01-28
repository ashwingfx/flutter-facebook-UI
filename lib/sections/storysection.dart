import 'package:facebookui/assets.dart';
import 'package:flutter/material.dart';
import '../widgets/storycard.dart';

class StorySection extends StatelessWidget {
  const StorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCards(
            storyText: "Add to story",
            storyImage: kuruppu,
            storyBtn: true,
            storyAvatar: dulkar,
          ),
          StoryCards(
            storyText: "Vinayakan",
            storyImage: aadu,
            storyBtn: false,
            storyAvatar: vinayak,
            storyBorder: true,
          ),
          StoryCards(
            storyText: "Asif Ali",
            storyImage: kooman,
            storyBtn: false,
            storyAvatar: asif,
            storyBorder: true,
          ),
          StoryCards(
            storyText: "Fahad Fasil",
            storyImage: pushpa,
            storyBtn: false,
            storyAvatar: fahad,
            storyBorder: true,
          ),
        ],
      ),
    );
  }
}
