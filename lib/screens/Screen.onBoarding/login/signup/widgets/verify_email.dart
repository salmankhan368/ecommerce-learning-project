import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s_store/data/repository/repository.authentication/authentication_repository.dart';
import 'package:s_store/fetaures/authentication/controllers.onboarding/signUp/verify.email.controller.dart';
import 'package:s_store/utils/constants/image_string.dart';
import 'package:s_store/utils/constants/sizes.dart';
import 'package:s_store/utils/constants/text_strings.dart';
import 'package:s_store/utils/helpers/helper_functions.dart';

class VerifyEmail extends StatelessWidget {
  final String? email;
  const VerifyEmail({super.key, this.email});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(VerifyEmailController());
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => AuthenticationRepository.instance.logout(),
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
                email ?? "",
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
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => controller.checkEmailVerificationStatus(),
                  child: Text(SText.cont),

                  // Get.to(
                  //   () => SuccessScreen(
                  //     image: SImage.succesReg,
                  //     title: SText.yourAccountCreatedTitle,
                  //     subtile: SText.yourAccountCreatedSubTitle,
                  //     onPressed: () => Get.to(() => LoginScreen()),
                  //   ),
                ),
              ),

              SizedBox(height: Ssizes.spacebtwItem),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () => controller.sendEmailVerification(),
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
