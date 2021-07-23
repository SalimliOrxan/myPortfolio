import 'package:flutter/material.dart';
import 'package:my_portfolio/data/constants.dart';
import 'package:my_portfolio/ui/responsive.dart';
import 'package:websafe_svg/websafe_svg.dart';

class MyOutlineButton extends StatelessWidget {
  const MyOutlineButton({
    Key? key,
    required this.imageSrc,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String imageSrc, text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: OutlinedButton(
        onPressed: () => press(),
        style: OutlinedButton.styleFrom(
          backgroundColor: Color(0xFFE8F0F9),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding,
              horizontal: Responsive.isMobile(context) ? kDefaultPadding : kDefaultPadding * 2.5
          ),
          side: BorderSide(color: Color(0xFFEDEDED))
        ),
        child: Row(
          children: [
            WebsafeSvg.asset(imageSrc, height: Responsive.isMobile(context) ? 20 : 40),
            SizedBox(width: Responsive.isMobile(context) ? 10 : 20),
            Text(text)
          ]
        )
      )
    );
  }
}
