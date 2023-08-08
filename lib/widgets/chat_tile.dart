import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class ChatTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/icon_splash.png",
                  width: 54,
                  height: 54,
                )
              ],
            )
          ],
        ));
  }
}
