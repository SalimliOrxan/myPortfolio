import 'package:flutter/material.dart';
import 'package:my_portfolio/data/constants.dart';
import 'package:my_portfolio/ui/responsive.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.imageSrc,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String imageSrc, text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => press(),
      style: TextButton.styleFrom(
        backgroundColor: Color(0xFFE8F0F9),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        padding: EdgeInsets.symmetric(
          vertical: Responsive.isMobile(context) ? 10 : kDefaultPadding,
          horizontal: Responsive.isMobile(context) ? 10 : kDefaultPadding * 2.5,
        )
      ),
      child: Row(
        children: [
          Image.asset(imageSrc, height: Responsive.isMobile(context) ? 20 : 40),
          SizedBox(width: Responsive.isMobile(context) ? 5 : 20),
          Text(
            text,
            style: TextStyle(fontSize: 10)
          )
        ]
      )
    );
  }
}