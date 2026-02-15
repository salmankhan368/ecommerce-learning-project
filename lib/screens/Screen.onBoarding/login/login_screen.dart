import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s_store/common/style/spacing_style.dart';
import 'package:s_store/common/widget_sigin_up_login/form_divider.dart';
import 'package:s_store/common/widget_sigin_up_login/social_button.dart';
import 'package:s_store/screens/Screen.onBoarding/login/widgets/login_form.dart';
import 'package:s_store/screens/Screen.onBoarding/login/widgets/login_header.dart';
import 'package:s_store/utils/constants/sizes.dart';
import 'package:s_store/utils/constants/text_strings.dart';
import 'package:s_store/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: SSpacingStyle.paddingWithAppBarHeight,
            child: Column(
              children: [
                //login header
                Login_header(dark: dark),
                //login form
                Sloginform(),

                ///Divider
                SDividerForm(dividerText: SText.signInwith.capitalize!),
                SizedBox(height: Ssizes.spacebtwSection),
                //footer
                SFottersocial(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
