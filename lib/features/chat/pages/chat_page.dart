import 'package:flutter/material.dart';
import '../widgets/chat_bubble.dart';
import '../widgets/empty_chat.dart';

import '../../../config/themes/size_config.dart';
import '../../../core/constants/theme_constant.dart';
import '../widgets/chat_input.dart';
import '../widgets/header_chat.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBgColor3,
        appBar: PreferredSize(
          child: HeaderChat(),
          preferredSize: Size.fromHeight(getProportionateScreenHeight(90)),
        ),
        body: _contentBody());
  }

  Widget _contentBody() {
    return Column(
      children: [
        _listChat(),
        ChatInput(),
      ],
    );
  }

  Widget _listChat() {
    final list = [true, false, true, false, true, false, true, false];
    return Expanded(
      child: list.isEmpty
          ? EmptyChat()
          : ListView.builder(
              padding: EdgeInsets.symmetric(
                vertical: getProportionateScreenHeight(16),
              ),
              reverse: true,
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) {
                final isMe = list[index];
                return ChatBubble(isMe: isMe);
              },
            ),
    );
  }
}
