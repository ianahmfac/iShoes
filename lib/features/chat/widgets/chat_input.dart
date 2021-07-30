import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../config/themes/size_config.dart';
import '../../../core/constants/theme_constant.dart';
import '../../../core/widgets/custom_circle_button.dart';

class ChatInput extends StatelessWidget {
  const ChatInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBgColor1,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: getProportionateScreenHeight(20),
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  style: kPrimaryTextStyle.copyWith(
                    fontSize: getProportionateScreenWidth(14),
                  ),
                  cursorColor: kPrimaryTextColor,
                  textCapitalization: TextCapitalization.words,
                  minLines: 1,
                  maxLines: 3,
                  textInputAction: TextInputAction.newline,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20),
                      vertical: getProportionateScreenHeight(12),
                    ),
                    hintText: 'Message',
                  ),
                ),
              ),
              SizedBox(width: getProportionateScreenWidth(12)),
              CustomCircleButton(
                icon: Icon(FontAwesomeIcons.paperPlane),
                onPressed: () {},
                buttonSize: 45,
                backgroundColor: kPrimaryColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
