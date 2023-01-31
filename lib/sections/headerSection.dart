import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  final String onebtnText;
  final Color onetnColor;
  final IconData onebtnIcon;

  final String twobtnText;
  final Color twotnColor;
  final IconData twobtnIcon;

/*  final buttonOne;
  final buttonTwo;
  final buttonThree;

  HeaderSection(
      {required this.buttonOne,
      required this.buttonTwo,
      required this.buttonThree});*/

  HeaderSection({
    required this.onebtnText,
    required this.onetnColor,
    required this.onebtnIcon,

    required this.twobtnText,
    required this.twotnColor,
    required this.twobtnIcon,
  });

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
          //buttonOne,
          headerButton(
              btnText: onebtnText, btnColor: onetnColor, btnIcon: onebtnIcon),
          verticalDivider,
          headerButton(
              btnText: twobtnText, btnColor: twotnColor, btnIcon: twobtnIcon),
          // buttonTwo,
          verticalDivider,
          headerButton(
              btnText: "hello", btnColor: Colors.grey, btnIcon: Icons.add),
          // buttonThree,
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
