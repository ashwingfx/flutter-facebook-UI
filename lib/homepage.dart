import 'package:facebookui/Sections/StatusSection.dart';
import 'package:facebookui/assets.dart';
import 'package:facebookui/sections/SuggestionSection.dart';
import 'package:facebookui/sections/headerSection.dart';
import 'package:facebookui/sections/roomsection.dart';
import 'package:facebookui/sections/storysection.dart';
import 'package:facebookui/widgets/circlebutton.dart';
import 'package:facebookui/widgets/postcard.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget devider({
    required double thick,
    required Color divColor,
  }) {
    return Divider(
      thickness: thick,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 26,
              fontWeight: FontWeight.w800,
            ),
          ),
          actions: [
            CircleButton(
              cirbtnIcon: Icons.search,
              cirBtnAction: () {
                print("Search Button Clicked");
              },
            ),
            CircleButton(
                cirbtnIcon: Icons.chat,
                cirBtnAction: () {
                  print("Chat Button Clicked");
                })
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            devider(thick: 1,divColor: Colors.grey.shade300),
            HeaderSection(onebtnText: "Live",onetnColor: Colors.redAccent,onebtnIcon: Icons.video_call,
                          twobtnText: "Photos", twotnColor: Colors.green,twobtnIcon: Icons.photo_album_outlined,
            ),
            devider(thick: 10,divColor: Colors.grey.shade300),
            RoomSection(),
            devider(thick: 10,divColor: Colors.grey.shade300),
            StorySection(),
            devider(thick: 10,divColor: Colors.grey.shade300),
            PostCard(postAvatar: fahad,postName: "Fahad Fasil",postHour: "7hr",showBluetick: true,postImageName: pushpa,),
            devider(thick: 10,divColor: Colors.grey.shade300),
            SuggestionSection(),
            devider(thick: 10,divColor: Colors.grey.shade300),
            PostCard(postAvatar: asif,postName: "Asif Ali",postHour: "10hr",showBluetick: true,postImageName: kooman,),
            devider(thick: 10,divColor: Colors.grey.shade300),



          ],
        ),
      ),
    );
  }
}
