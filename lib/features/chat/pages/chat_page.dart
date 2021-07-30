import 'package:flutter/material.dart';
import '../../../config/themes/size_config.dart';
import '../../../core/constants/theme_constant.dart';
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
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Container();
        },
      ),
    );
  }
}
