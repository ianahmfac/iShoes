import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'product_in_chat.dart';

import '../../../config/themes/size_config.dart';
import '../../../core/constants/theme_constant.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    Key? key,
    required this.isMe,
  }) : super(key: key);

  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: getProportionateScreenHeight(16),
        right: getProportionateScreenWidth(16),
        left: getProportionateScreenWidth(16),
      ),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Visibility(
            visible: isMe,
            child: ProductInChat(),
          ),
          _mainChatBubble(),
          SizedBox(height: getProportionateScreenHeight(4)),
          _sentTime(),
        ],
      ),
    );
  }

  Widget _sentTime() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(12),
      ),
      child: Text(
        '02:15 AM',
        style: kPrimaryTextStyle.copyWith(
          fontSize: getProportionateScreenWidth(10),
        ),
      ),
    );
  }

  Widget _mainChatBubble() {
    return Bubble(
      alignment: isMe ? Alignment.topRight : Alignment.topLeft,
      color: isMe ? kSecondaryColor : kSubtitleColor,
      nip: isMe ? BubbleNip.rightTop : BubbleNip.leftTop,
      elevation: 8,
      padding: BubbleEdges.symmetric(
        horizontal: getProportionateScreenWidth(12),
      ),
      child: Text(
        'Hello from the other side',
        style: kPrimaryTextStyle.copyWith(
          fontSize: getProportionateScreenWidth(16),
        ),
        textAlign: isMe ? TextAlign.right : TextAlign.left,
      ),
    );
  }
}
