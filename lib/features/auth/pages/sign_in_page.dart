import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/constants/theme_constant.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/custom_outlined_button.dart';
import '../widgets/header_text.dart';
import '../widgets/suffix_form_icon.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: SingleChildScrollView(child: _contentBody()),
    );
  }

  Widget _contentBody() {
    return Container(
      padding: const EdgeInsets.fromLTRB(
        kDefaultMargin,
        50,
        kDefaultMargin,
        0,
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          HeaderText(
            title: 'Welcome Back',
            subtitle:
                'Sign in with your email and password\nor sign up for new account',
          ),
          const SizedBox(height: 50),
          _emailTextField(),
          const SizedBox(height: 24),
          _passwordTextField(),
          const SizedBox(height: 50),
          CustomButton(
            text: 'Continue',
            onPressed: () {},
          ),
          const SizedBox(height: 16),
          Text(
            '- Dont\'t have an account? -',
            style: kSecondaryTextStyle,
          ),
          const SizedBox(height: 16),
          CustomOutlinedButton(
            text: 'Sign Up',
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  TextFormField _passwordTextField() {
    return TextFormField(
      cursorColor: kPrimaryTextColor,
      style: kPrimaryTextStyle,
      textInputAction: TextInputAction.done,
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Enter your password',
        suffixIcon: const SuffixFormIcon(
          icon: FontAwesomeIcons.lock,
        ),
      ),
    );
  }

  TextFormField _emailTextField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      cursorColor: kPrimaryTextColor,
      textInputAction: TextInputAction.next,
      style: kPrimaryTextStyle,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'Enter your email',
        suffixIcon: SuffixFormIcon(
          icon: FontAwesomeIcons.solidEnvelope,
        ),
      ),
    );
  }
}
