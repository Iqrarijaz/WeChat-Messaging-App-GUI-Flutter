
import 'package:flutter/material.dart';
import 'package:we_chat/models/Chat.dart';

import '../../../constants.dart';

class ChatCard extends StatelessWidget {
   ChatCard({
    Key? key,
    required this.chat,
    required this.press,
  }) : super(key: key);
  final Chat_data chat;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding:  EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: kDefaultPadding * 0.75),
        child: Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage(chat.image),
                ),
                if (chat.isActive)
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: 14,
                      width: 14,
                      decoration: BoxDecoration(
                        color: kActiveLightTheme,
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: Theme.of(context).scaffoldBackgroundColor,
                            width: 0),
                      ),
                    ),
                  )
              ],
            ),
            Expanded(
              child: Padding(
                padding:
                     EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      chat.name,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 8),
                    Opacity(
                      opacity: 0.64,
                      child: Text(
                        chat.lastMessage,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Opacity(
              opacity: 0.64,
              child: Text(chat.time),
            ),
          ],
        ),
      ),
    );
  }
}
