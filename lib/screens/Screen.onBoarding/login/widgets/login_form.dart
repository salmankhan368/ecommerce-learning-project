import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:s_store/fetaures/authentication/controllers/login/login_controller.dart';
import 'package:s_store/screens/password_configuration/forget_password.dart';
import 'package:s_store/screens/sign_up.widgets/sign_up.dart';
import 'package:s_store/utils/constants/sizes.dart';
import 'package:s_store/utils/constants/text_strings.dart';
import 'package:s_store/utils/validators/validation.dart';

class Sloginform extends StatelessWidget {
  const Sloginform({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Ssizes.spacebtwSection),

      child: Form(
        key: controller.loginFormKey,
        child: Column(
          children: [
            TextFormField(
              controller: controller.email,
              validator: (value) => SValidator.validateEmail(value),
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: SText.email,
              ),
            ),
            SizedBox(height: Ssizes.spaceBWInputFields),
            Obx(
              () => TextFormField(
                controller: controller.password,
                obscureText: controller.hidePassword.value,
                validator: (value) => SValidator.validatePassword(value),
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: SText.password,
                  suffixIcon: IconButton(
                    onPressed: () => controller.hidePassword.value =
                        !controller.hidePassword.value,
                    icon: Icon(
                      controller.hidePassword.value
                          ? Iconsax.eye_slash
                          : Iconsax.eye,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: Ssizes.spaceBWInputFields / 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Obx(
                          () => Checkbox(
                            value: controller.rememberMe.value,
                            onChanged: (value) => controller.rememberMe.value =
                                !controller.rememberMe.value,
                          ),
                        ),
                      ],
                    ),
                    Text(SText.remeberMe),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    Get.to(() => ForgetPassword());
                  },
                  child: Text(SText.forgetPass),
                ),
              ],
            ),
            SizedBox(height: Ssizes.spacebtwSection),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => controller.emailAndPasswordSiginIn(),

                child: Text(SText.siginIn),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Get.to(SignUpPage());
                },
                child: Text(SText.createAcc),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
