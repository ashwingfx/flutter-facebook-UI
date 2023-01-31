import 'package:facebookui/assets.dart';
import 'package:facebookui/sections/headerSection.dart';
import 'package:flutter/material.dart';
import 'avatar.dart';
import 'bluetick.dart';

class PostCard extends StatelessWidget {
  //const PostCard({Key? key}) : super(key: key);

  final String postAvatar;
  final String postName;
  final String postHour;
  final bool showBluetick;
  final String postImageName;

  // ignore: prefer_const_constructors_in_immutables
  PostCard({
    required this.postAvatar,
    required this.postName,
    required this.postHour,
    this.showBluetick = false,
    required this.postImageName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          postCardTitle(),
          postImage(postName: postImageName),
          postCardFooter(),
          Divider(thickness: 1,),
          HeaderSection(onebtnText: "Share",onetnColor: Colors.grey,onebtnIcon: Icons.thumb_up_alt,
            twobtnText: "Photos", twotnColor: Colors.green,twobtnIcon: Icons.comment,
          ),
        ],
      ),
    );
  }

  Widget postCardFooter() {
    return Container(
      height: 50,
      //color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 30,
            width: 100,
            padding: EdgeInsets.only(left: 10, right: 10),
            //color: Colors.red,
            child: Row(
              children: [
                Icon(
                  Icons.thumb_up,
                  color: Colors.blue,
                  size: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "20k",
                )
              ],
            ),
          ),
          Container(
            height: 30,
            //width: 100,
            //color: Colors.greenAccent,
            child: Row(
              children: [
                Text(
                  "1k",
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Comments",
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "20k",
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Shares",
                ),
                SizedBox(
                  width: 10,
                ),
                Avatar(
                  avtarImage: fahad,
                  width: 20,
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avatar(
        avtarImage: postAvatar,
      ),
      title: Row(
        children: [
          Text(postName),
          SizedBox(
            width: 15,
          ),
          showBluetick ? BlueTick() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text("${postHour}"),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.public,
            color: Colors.grey,
            size: 15,
          ),
        ],
      ),
      trailing: Icon(
        Icons.more_horiz,
      ),
    );
  }

  Widget postCardTitle() {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Text('Happy Diwali'),
    );
  }

  Widget postImage({required postName,}) {
    return Container(
      child: Image.asset(
        postName,
        fit: BoxFit.cover,
      ),
    );
  }
}
