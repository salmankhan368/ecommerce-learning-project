import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:s_store/common/widgets/app.bar/app_bar.dart';
import 'package:s_store/fetaures/personalization/controller/user_controller.dart';
import 'package:s_store/utils/constants/sizes.dart';
import 'package:s_store/utils/validators/validation.dart';

class ReAuthenticateUserLoginForm extends StatelessWidget {
  const ReAuthenticateUserLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return Scaffold(
      appBar: SAppBar(title: Text("Re-Authenticate User")),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Ssizes.defaultSpace),
          child: Form(
            key: controller.reAuthFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //for email
                TextFormField(
                  controller: controller.rVerifyEmail,
                  validator: (value) => SValidator.validateEmail(value),
                  decoration: InputDecoration(
                    labelText: "Email",
                    icon: Icon(Iconsax.direct_right),
                  ),
                ),
                SizedBox(height: Ssizes.spaceBWInputFields),
                Obx(
                  () => TextFormField(
                    controller: controller.rVerifyPassword,
                    obscureText: controller.hidePassword.value,
                    validator: (value) =>
                        SValidator.validateEmptyText("Password", value),
                    decoration: InputDecoration(
                      labelText: "Password",
                      prefixIcon: Icon(Iconsax.password_check),
                      suffixIcon: IconButton(
                        onPressed: () =>
                            controller.hidePassword.value !=
                            controller.hidePassword.value,
                        icon: Icon(
                          controller.hidePassword.value
                              ? Iconsax.eye_slash
                              : Iconsax.eye,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: Ssizes.spacebtwSection),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: () {}, child: Text("Save")),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
