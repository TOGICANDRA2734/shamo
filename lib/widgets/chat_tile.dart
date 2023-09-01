import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail-chat');
      },
      child: Container(
          margin: EdgeInsets.only(top: defaultMargin),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/shop_icon.png",
                    width: 54,
                    height: 54,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Shoe Store",
                          style: primaryTextStyle.copyWith(
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          "Good night, This item is on...",
                          style: secondaryTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: light,
                          ),
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                  Text(
                    "now",
                    style: secondaryTextStyle.copyWith(
                      fontSize: 14,
                    ),
                  )
                ],
              ),
              SizedBox(height: 12),
              Divider(
                thickness: 1,
                color: Color(0xff2B2939),
              )
            ],
          )),
    );
  }
}
