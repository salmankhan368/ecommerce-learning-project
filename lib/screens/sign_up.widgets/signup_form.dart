import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:s_store/fetaures/authentication/controllers.onboarding/signUp/sign_up_controller%20.dart';
import 'package:s_store/screens/Screen.onBoarding/login/signup/widgets/verify_email.dart';
import 'package:s_store/screens/sign_up.widgets/terms.and.condition.checkbox.dart';
import 'package:s_store/utils/constants/sizes.dart';
import 'package:s_store/utils/constants/text_strings.dart';
import 'package:s_store/utils/validators/validation.dart';

class SSignupForm extends StatelessWidget {
  const SSignupForm({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  validator: (value) =>
                      SValidator.validateEmptyText('First Name', value),
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
                  controller: controller.lastName,
                  validator: (value) =>
                      SValidator.validateEmptyText('Last Name', value),
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
            validator: (value) =>
                SValidator.validateEmptyText('User Name', value),
            controller: controller.userName,
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
            validator: (value) => SValidator.validateEmptyText('Email', value),
            controller: controller.email,
            expands: false,
            decoration: InputDecoration(
              labelText: SText.email,
              border: OutlineInputBorder(),
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          SizedBox(height: Ssizes.spaceBWInputFields),
          TextFormField(
            validator: (value) => SValidator.validatePhoneNumber(value),
            controller: controller.phoneNumber,
            decoration: InputDecoration(
              labelText: SText.phoneNo,

              border: OutlineInputBorder(),
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          SizedBox(height: Ssizes.spaceBWInputFields),
          //password
          Obx(
            () => TextFormField(
              validator: (value) =>
                  SValidator.validateEmptyText('Password', value),
              controller: controller.password,
              obscureText: controller.hidePassword.value,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => controller.hidePassword.value =
                      !controller.hidePassword.value,
                  icon: Icon(Iconsax.eye_slash),
                ),
                border: OutlineInputBorder(),
                labelText: SText.password,
                prefixIcon: Icon(Iconsax.password_check),
              ),
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
