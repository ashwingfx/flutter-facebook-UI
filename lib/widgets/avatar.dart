import 'package:flutter/material.dart';
import '../assets.dart';

class Avatar extends StatelessWidget {
  //const Avatar({Key? key}) : super(key: key);
  final String avtarImage;
  final bool statusIndicator;
  final bool displayBorder;
  final double width;
  final double height;

  Avatar({
    required this.avtarImage,
    this.statusIndicator = false,
    this.displayBorder = false,
    this.width = 50,
    this.height = 50,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: displayBorder
                ? Border.all(
                    width: 2,
                    color: Colors.blue,
                  )
                : Border(),
          ),
          //color: Colors.red,
          padding: EdgeInsets.only(
            left: 4,
            right: 4,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              avtarImage,
              width: width,
              height: height,
              fit: BoxFit.cover,
            ),
          ),
        ),
        statusIndicator
            ? Positioned(
                bottom: 5,
                right: 0,
                child: Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    //borderRadius: BorderRadius.circular(1),
                    shape: BoxShape.circle,
                    color: Colors.greenAccent,
                    border: Border.all(
                      width: 3,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            : SizedBox(),
      ],
    );
  }
}
