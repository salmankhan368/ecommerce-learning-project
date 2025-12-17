import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:s_store/navigation_menu.dart';
import 'package:s_store/screens/password_configuration/forget_password.dart';
import 'package:s_store/screens/sign_up.widgets/sign_up.dart';
import 'package:s_store/utils/constants/sizes.dart';
import 'package:s_store/utils/constants/text_strings.dart';

class Slogin_form extends StatelessWidget {
  const Slogin_form({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Ssizes.spacebtwSection),

      child: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: SText.email,
              ),
            ),
            SizedBox(height: Ssizes.spaceBWInputFields),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: SText.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            SizedBox(height: Ssizes.spaceBWInputFields / 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
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
                onPressed: () {
                  Get.to(() => NavigationMenu());
                },
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
