import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WebsafeSvg.asset(
          'assets/images/back_home.svg',
          fit: BoxFit.fill,
        ),
        Column(
          children: [
            Container(
              width: double.infinity,
              height: 35,
              color: Colors.white,
            ),
          ],
        ),
      ],
    );
  }
}