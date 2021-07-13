import 'package:flutter/material.dart';
import 'package:my_portfolio/responsive.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({
    Key? key,
    required this.numOfExp,
  }) : super(key: key);

  final String numOfExp;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.all(20),
      height: Responsive.isMobile(context) ? 150 : 240,
      width: Responsive.isMobile(context) ? 130 : 255,
      decoration: BoxDecoration(
        color: Color(0xFFF7E8FF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Color(0xFFEDD2FC),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 3),
              blurRadius: 6,
              color: Color(0xFFA600FF).withOpacity(0.25),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Text(
                  numOfExp,
                  style: TextStyle(
                    fontSize: Responsive.isMobile(context) ? 55 : 100,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 6
                      ..color = Color(0xFFDFA3FF).withOpacity(0.5),
                    shadows: [
                      BoxShadow(
                        offset: Offset(0, 5),
                        blurRadius: 10,
                        color: Color(0xFFA600FF).withOpacity(0.5),
                      ),
                    ],
                  ),
                ),
                Text(
                  numOfExp,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: Responsive.isMobile(context) ? 55 : 100,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(height: 20 / 2),
            Text(
              "Years of Experience",
              style: TextStyle(
                fontSize: Responsive.isMobile(context) ? 9 : 20,
                color: Color(0xFFA600FF),
              ),
            )
          ],
        ),
      ),
    );
  }
}
