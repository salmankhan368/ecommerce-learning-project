import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/utils.dart';
import 'package:s_store/common/widgets/successScreen/sucees_screen.dart';
import 'package:s_store/screens/Screen.onBoarding/login/login_screen.dart';
import 'package:s_store/utils/constants/image_string.dart';
import 'package:s_store/utils/constants/sizes.dart';
import 'package:s_store/utils/constants/text_strings.dart';
import 'package:s_store/utils/helpers/helper_functions.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => LoginScreen()),
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Ssizes.defaultSpace),
          child: Column(
            children: [
              ///image
              Image(
                width: SHelperFunctions.screenWidth() * 0.5,
                image: AssetImage(SImage.emailsent),
              ),
              SizedBox(height: Ssizes.spacebtwSection),
              Text(
                SText.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: Ssizes.spacebtwItem),
              Text(
                'salmankhan@gmail.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: Ssizes.spacebtwItem),
              Text(
                SText.confirmEmailSubtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: Ssizes.spacebtwSection),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(
                    () => SuccessScreen(
                      image: SImage.success,
                      title: SText.yourAccountCreatedTitle,
                      subtile: SText.yourAccountCreatedSubTitle,
                      onPressed: () => Get.to(() => LoginScreen()),
                    ),
                  ),
                  child: Text(SText.cont),
                ),
              ),
              SizedBox(height: Ssizes.spacebtwItem),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: Text(SText.resendemail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
