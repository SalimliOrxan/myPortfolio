import 'package:flutter/material.dart';
import 'package:my_portfolio/responsive.dart';

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
    return FlatButton(
      padding: EdgeInsets.symmetric(
        vertical: Responsive.isMobile(context) ? 10 : 20,
        horizontal: Responsive.isMobile(context) ? 10 : 20 * 2.5,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      color: Color(0xFFE8F0F9),
      onPressed: () => press(),
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