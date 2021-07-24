import 'package:flutter/material.dart';
import 'package:ishoes/config/themes/size_config.dart';
import 'package:ishoes/core/constants/theme_constant.dart';
import 'package:ishoes/features/auth/widgets/header_text.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: SingleChildScrollView(
        child: _buildContent(),
      ),
    );
  }

  Widget _buildContent() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(
        getProportionateScreenWidth(kDefaultMargin),
        getProportionateScreenHeight(50),
        getProportionateScreenWidth(kDefaultMargin),
        0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          HeaderText(
            title: 'Register Account',
            subtitle:
                'Complete your account details\nto be registed in the app',
          ),
        ],
      ),
    );
  }
}
