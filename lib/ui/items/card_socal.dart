import 'package:flutter/material.dart';
import 'package:my_portfolio/ui/responsive.dart';

import '../../data/constants.dart';

class SocalCard extends StatefulWidget {
  const SocalCard({
    Key? key,
    required this.icon,
    required this.name,
    required this.color,
    required this.press,
  }) : super(key: key);

  final String name;
  final Color color;
  final Widget icon;
  final Function press;

  @override
  _SocalCardState createState() => _SocalCardState();
}

class _SocalCardState extends State<SocalCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    final isMobileMin = Responsive.isMobileMin(context);

    return FittedBox(
      child: InkWell(
        onTap: () => widget.press(),
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          padding: EdgeInsets.symmetric(
            vertical: kDefaultPadding / 2,
            horizontal: kDefaultPadding * 1.5,
          ),
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover) kDefaultCardShadow]
          ),
          child: Row(
            children: [
              widget.icon,
              Visibility(
                  visible: !isMobileMin,
                  child: SizedBox(width: kDefaultPadding)
              ),
              Visibility(
                  visible: !isMobileMin,
                  child: Text(widget.name)
              )
            ]
          )
        )
      )
    );
  }
}