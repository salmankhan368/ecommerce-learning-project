import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:s_store/screens/Screen.onBoarding/login/signup/widgets/verify_email.dart';
import 'package:s_store/screens/sign_up.widgets/terms.and.condition.checkbox.dart';
import 'package:s_store/utils/constants/sizes.dart';
import 'package:s_store/utils/constants/text_strings.dart';

class SSignupForm extends StatelessWidget {
  const SSignupForm({super.key});
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: SText.firstName,
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              SizedBox(width: Ssizes.spaceBWInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: SText.lastName,
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: Ssizes.spaceBWInputFields),
          //Username
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: SText.userName,
              border: OutlineInputBorder(),
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          SizedBox(height: Ssizes.spaceBWInputFields),
          //email
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: SText.email,
              border: OutlineInputBorder(),
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          SizedBox(height: Ssizes.spaceBWInputFields),
          TextFormField(
            decoration: InputDecoration(
              labelText: SText.phoneNo,
              border: OutlineInputBorder(),
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          SizedBox(height: Ssizes.spaceBWInputFields),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              suffixIcon: Icon(Iconsax.eye_slash),
              border: OutlineInputBorder(),
              labelText: SText.password,
              prefixIcon: Icon(Iconsax.password_check),
            ),
          ),
          SizedBox(height: Ssizes.spaceBWInputFields),
          //Terms and condition
          STermsAndConditionsCheckbox(),
          SizedBox(height: Ssizes.spacebtwSection),

          ///signup button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => VerifyEmail()),
              child: Text(SText.createAcc),
            ),
          ),
        ],
      ),
    );
  }
}
