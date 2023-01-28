import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  final buttonOne;
  final buttonTwo;
  final buttonThree;

  HeaderSection(
      {required this.buttonOne,
      required this.buttonTwo,
      required this.buttonThree});

  @override
  Widget verticalDivider = VerticalDivider(
    thickness: 1,
    color: Colors.grey[300],
  );

  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buttonOne,

          verticalDivider,

          buttonTwo,

          verticalDivider,

          buttonThree,
        ],
      ),
    );
  }

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
}
