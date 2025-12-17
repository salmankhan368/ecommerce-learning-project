import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s_store/screens/Screen.onBoarding/login/login_screen.dart';
import 'package:s_store/utils/constants/image_string.dart';
import 'package:s_store/utils/constants/sizes.dart';
import 'package:s_store/utils/constants/text_strings.dart';
import 'package:s_store/utils/helpers/helper_functions.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(Ssizes.defaultSpace),
        child: Column(
          children: [
            //image
            Image(
              width: SHelperFunctions.screenWidth() * 0.5,
              image: AssetImage(SImage.emailsent),
            ),
            SizedBox(height: Ssizes.spacebtwSection),
            //header
            Text(
              SText.changeYourPasswordTilte,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: Ssizes.spacebtwItem),
            Text(
              SText.changeYourPasswordSubtile,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            //button
            SizedBox(height: Ssizes.spacebtwSection),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => LoginScreen()),
                child: Text(SText.done),
              ),
            ),
            //resrend email
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () => Get.to(() => LoginScreen()),
                child: Text(SText.resendemail),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
