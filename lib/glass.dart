import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/responsive.dart';

class Glass extends StatelessWidget {

  const Glass();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Responsive(
        mobile: Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      constraints: BoxConstraints(maxHeight: size.height * 0.45),
                      width: double.infinity,
                      color: Colors.white.withOpacity(0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Hello There!",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(fontSize: 15, color: Colors.white),
                            ),
                            Text(
                                "John Doe",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  height: 1.5,
                                )
                            ),
                            Text(
                                "A ",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(fontSize: 15, color: Colors.white)
                            )
                          ]
                      )
                  )
              )
          ),
        ),
        tablet: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    constraints: BoxConstraints(maxWidth: size.width * 0.4, maxHeight: size.height * 0.7),
                    width: double.infinity,
                    color: Colors.white.withOpacity(0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Hello There!",
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                              "John Doe",
                              style: TextStyle(
                                fontSize: 80,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                height: 1.5,
                              )
                          ),
                          Text(
                              "A ",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(color: Colors.white)
                          )
                        ]
                    )
                )
            )
        ),
        desktop: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
                    constraints: BoxConstraints(maxWidth: size.width * 0.4, maxHeight: size.height * 0.7),
                    width: double.infinity,
                    color: Colors.white.withOpacity(0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Hello There!",
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                              "John Doe",
                              style: TextStyle(
                                fontSize: 80,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                height: 1.5,
                              )
                          ),
                          Text(
                              "A ",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(color: Colors.white)
                          )
                        ]
                    )
                )
            )
        )
    );
  }
}