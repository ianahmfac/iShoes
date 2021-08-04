import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../config/themes/size_config.dart';
import '../../../core/constants/theme_constant.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/suffix_form_icon.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: SingleChildScrollView(child: _contentBody()),
    );
  }

  Widget _contentBody() {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenHeight(kDefaultMargin),
          horizontal: getProportionateScreenWidth(kDefaultMargin),
        ),
        child: Column(
          children: [
            _fullNameForm(),
            SizedBox(height: getProportionateScreenHeight(kDefaultMargin)),
            _usernameForm(),
            SizedBox(height: getProportionateScreenHeight(kDefaultMargin)),
            _emailForm(),
            SizedBox(height: getProportionateScreenHeight(50)),
            CustomButton(
              text: 'Update Profile',
              onPressed: () {},
              textSize: 18,
            ),
          ],
        ),
      ),
    );
  }

  TextFormField _emailForm() {
    return TextFormField(
      initialValue: 'ianahmadfachriza6@gmail.com',
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.emailAddress,
      style: kPrimaryTextStyle,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'Enter Email',
        suffixIcon: SuffixFormIcon(icon: FontAwesomeIcons.solidEnvelope),
      ),
    );
  }

  TextFormField _usernameForm() {
    return TextFormField(
      initialValue: 'ianahmfac',
      textInputAction: TextInputAction.next,
      style: kPrimaryTextStyle,
      decoration: InputDecoration(
        labelText: 'Username',
        hintText: 'Enter Username',
        suffixIcon: SuffixFormIcon(icon: FontAwesomeIcons.idCardAlt),
      ),
    );
  }

  TextFormField _fullNameForm() {
    return TextFormField(
      initialValue: 'Ian Ahmad Fachriza',
      textCapitalization: TextCapitalization.words,
      textInputAction: TextInputAction.next,
      style: kPrimaryTextStyle,
      decoration: InputDecoration(
        labelText: 'Full Name',
        hintText: 'Enter Full Name',
        suffixIcon: SuffixFormIcon(icon: FontAwesomeIcons.userAlt),
      ),
    );
  }
}
