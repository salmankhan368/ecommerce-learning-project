import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';
import 'package:iconsax/iconsax.dart';
import 'package:s_store/screens/password_configuration/reset_password.dart';
import 'package:s_store/utils/constants/sizes.dart';
import 'package:s_store/utils/constants/text_strings.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: true),
      body: Padding(
        padding: EdgeInsets.all(Ssizes.defaultSpace),
        child: Column(
          children: [
            //heading
            Text(
              SText.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: Ssizes.spacebtwItem),
            Text(
              SText.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            SizedBox(height: Ssizes.spacebtwSection * 2),
            SizedBox(
              height: Ssizes.defaultSpace,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: SText.email,

                  prefixIcon: Icon(Iconsax.direct_right),
                ),
              ),
            ),
            SizedBox(height: Ssizes.spacebtwSection),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => ResetPasswordScreen());
                },
                child: Text(SText.submit),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
