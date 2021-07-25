import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ishoes/config/routes/app_router.gr.dart';
import 'package:ishoes/config/themes/size_config.dart';
import 'package:ishoes/core/constants/theme_constant.dart';
import 'package:ishoes/core/widgets/custom_button.dart';
import 'package:ishoes/features/auth/widgets/header_text.dart';
import 'package:ishoes/features/auth/widgets/suffix_form_icon.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();

  void _goToNavigationPage() {
    AutoRouter.of(context).replace(NavigationPageRoute());
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
            TextFormField(
              textCapitalization: TextCapitalization.words,
              textInputAction: TextInputAction.next,
              style: kPrimaryTextStyle,
              decoration: InputDecoration(
                labelText: 'Full Name',
                hintText: 'ex: John Doe',
                suffixIcon: SuffixFormIcon(icon: FontAwesomeIcons.userAlt),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(24)),
            TextFormField(
              textInputAction: TextInputAction.next,
              style: kPrimaryTextStyle,
              decoration: InputDecoration(
                labelText: 'Username',
                hintText: 'ex: john_doe',
                suffixIcon: SuffixFormIcon(icon: FontAwesomeIcons.idCardAlt),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(24)),
            TextFormField(
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              style: kPrimaryTextStyle,
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'ex: john_doe@gmail.com',
                suffixIcon:
                    SuffixFormIcon(icon: FontAwesomeIcons.solidEnvelope),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(24)),
            TextFormField(
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
            ),
            SizedBox(height: getProportionateScreenHeight(30)),
            CustomButton(
              text: 'Continue',
              onPressed: _goToNavigationPage,
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
}
