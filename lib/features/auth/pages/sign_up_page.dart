import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../config/routes/app_router.gr.dart';
import '../../../config/themes/size_config.dart';
import '../../../core/constants/theme_constant.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/suffix_form_icon.dart';
import '../widgets/header_text.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();

  void _goToNavigationPage() {
    AutoRouter.of(context).replaceAll([NavigationPageRoute()]);
  }

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
    return Form(
      key: _formKey,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(kDefaultMargin),
          vertical: getProportionateScreenHeight(kDefaultMargin),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HeaderText(
              title: 'Register Account',
              subtitle:
                  'Complete your account details\nto be registed in the app',
            ),
            SizedBox(height: getProportionateScreenHeight(50)),
            _fullNameForm(),
            SizedBox(height: getProportionateScreenHeight(24)),
            _usernameForm(),
            SizedBox(height: getProportionateScreenHeight(24)),
            _emailForm(),
            SizedBox(height: getProportionateScreenHeight(24)),
            _passwordForm(),
            SizedBox(height: getProportionateScreenHeight(30)),
            CustomButton(
              text: 'Continue',
              onPressed: _goToNavigationPage,
              textSize: 18,
            ),
            SizedBox(height: getProportionateScreenHeight(30)),
            Text(
              'By continuing your confirm that you are agree\nwith Our Term and Condition',
              style: kSecondaryTextStyle.copyWith(fontSize: 12),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  TextFormField _passwordForm() {
    return TextFormField(
      textInputAction: TextInputAction.done,
      style: kPrimaryTextStyle,
      obscureText: true,
      enableSuggestions: false,
      autocorrect: false,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'ex: MyPassworDD123@@',
        suffixIcon: SuffixFormIcon(icon: FontAwesomeIcons.lock),
        helperText: '* Password must contain at least 6 characters',
      ),
    );
  }

  TextFormField _emailForm() {
    return TextFormField(
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.emailAddress,
      style: kPrimaryTextStyle,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'ex: john_doe@gmail.com',
        suffixIcon: SuffixFormIcon(icon: FontAwesomeIcons.solidEnvelope),
      ),
    );
  }

  TextFormField _usernameForm() {
    return TextFormField(
      textInputAction: TextInputAction.next,
      style: kPrimaryTextStyle,
      decoration: InputDecoration(
        labelText: 'Username',
        hintText: 'ex: john_doe',
        suffixIcon: SuffixFormIcon(icon: FontAwesomeIcons.idCardAlt),
      ),
    );
  }

  TextFormField _fullNameForm() {
    return TextFormField(
      textCapitalization: TextCapitalization.words,
      textInputAction: TextInputAction.next,
      style: kPrimaryTextStyle,
      decoration: InputDecoration(
        labelText: 'Full Name',
        hintText: 'ex: John Doe',
        suffixIcon: SuffixFormIcon(icon: FontAwesomeIcons.userAlt),
      ),
    );
  }
}
