import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/widgets/chat_tile.dart';

class ChatPage extends StatelessWidget {
  Widget header() {
    return AppBar(
      backgroundColor: bgColor1,
      centerTitle: true,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Text(
        "Message Support",
        style: primaryTextStyle.copyWith(
          fontSize: 18,
          fontWeight: medium,
        ),
      ),
    );
  }

  Widget emptyChat() {
    return Expanded(
      child: Container(
        color: bgColor3,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/headset_icon.png",
              width: 80,
              height: 80,
            ),
            SizedBox(height: 20),
            Text(
              "Opss no message yet?",
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            SizedBox(height: 12),
            Text(
              "You have never done a transaction",
              style: subtitleTextStyle.copyWith(fontSize: 14),
            ),
            Container(
                margin: EdgeInsets.only(top: 20),
                width: 150,
                height: 50,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                  ),
                  child: Text(
                    "Explore Store",
                    style: primaryTextStyle.copyWith(
                        fontSize: 18, fontWeight: medium),
                  ),
                )),
          ],
        ),
      ),
    );
  }

  Widget content() {
    return Expanded(
      child: Container(
        color: bgColor3,
        width: double.infinity,
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [ChatTile()],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [header(), content()],
    );
  }
}
