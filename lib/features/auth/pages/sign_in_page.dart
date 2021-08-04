import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../config/routes/app_router.gr.dart';
import '../../../config/themes/size_config.dart';
import '../../../core/constants/theme_constant.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/custom_outlined_button.dart';
import '../../../core/widgets/suffix_form_icon.dart';
import '../widgets/header_text.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    SizeConfig().init(context);
  }

  void _goToSignUpPage() {
    AutoRouter.of(context).push(SignUpPageRoute());
  }

  void _goToNavigationPage() {
    AutoRouter.of(context).replace(NavigationPageRoute());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: SingleChildScrollView(child: _contentBody()),
    );
  }

  Widget _contentBody() {
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.fromLTRB(
          getProportionateScreenWidth(kDefaultMargin),
          getProportionateScreenHeight(50),
          getProportionateScreenWidth(kDefaultMargin),
          getProportionateScreenHeight(kDefaultMargin),
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
            SizedBox(height: getProportionateScreenHeight(50)),
            _emailTextField(),
            SizedBox(height: getProportionateScreenHeight(24)),
            _passwordTextField(),
            SizedBox(height: getProportionateScreenHeight(50)),
            CustomButton(
              text: 'Continue',
              onPressed: _goToNavigationPage,
              textSize: 18,
            ),
            SizedBox(height: getProportionateScreenHeight(16)),
            Text(
              '- Don\'t have an account? -',
              style: kSecondaryTextStyle,
            ),
            SizedBox(height: getProportionateScreenHeight(16)),
            CustomOutlinedButton(
              text: 'Sign Up',
              onPressed: _goToSignUpPage,
              textSize: 18,
            ),
          ],
        ),
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
