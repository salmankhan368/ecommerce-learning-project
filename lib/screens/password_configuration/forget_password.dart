import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:s_store/fetaures/authentication/controllers/Forget/forget_controller.dart';
import 'package:s_store/utils/constants/sizes.dart';
import 'package:s_store/utils/constants/text_strings.dart';
import 'package:s_store/utils/validators/validation.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ForgetPasswordController());
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
              height: 60,
              child: Form(
                key: controller.forgetPasswordFormKey,
                child: TextFormField(
                  controller: controller.email,

                  validator: (value) => SValidator.validateEmail(value),
                  decoration: InputDecoration(
                    labelText: SText.email,
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Iconsax.direct_right),
                  ),
                ),
              ),
            ),
            SizedBox(height: Ssizes.spaceBWInputFields),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => controller.sendPasswordResetEmail(),
                child: Text(SText.submit),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
