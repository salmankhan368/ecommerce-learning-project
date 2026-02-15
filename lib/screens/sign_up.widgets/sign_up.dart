import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s_store/common/widget_sigin_up_login/form_divider.dart';
import 'package:s_store/common/widget_sigin_up_login/social_button.dart';
import 'package:s_store/screens/sign_up.widgets/signup_form.dart';
import 'package:s_store/utils/constants/sizes.dart';
import 'package:s_store/utils/constants/text_strings.dart';
import 'package:s_store/utils/helpers/helper_functions.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Ssizes.defaultSpace),
          child: Column(
            children: [
              //Title
              Text(
                SText.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: Ssizes.spacebtwSection),
              //Form
              SSignupForm(),
              SizedBox(height: Ssizes.spacebtwSection),
              SDividerForm(dividerText: SText.signUpWith.capitalize!),
              SizedBox(height: Ssizes.spacebtwSection),
              SFottersocial(),
            ],
          ),
        ),
      ),
    );
  }
}
