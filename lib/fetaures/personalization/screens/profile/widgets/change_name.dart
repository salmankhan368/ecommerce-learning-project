import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:s_store/common/widgets/app.bar/app_bar.dart';
import 'package:s_store/fetaures/personalization/controller/update_name_controller.dart';

import 'package:s_store/utils/constants/sizes.dart';
import 'package:s_store/utils/constants/text_strings.dart';
import 'package:s_store/utils/validators/validation.dart';

class ChangeName extends StatelessWidget {
  const ChangeName({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UpdateNameController());

    return Scaffold(
      appBar: SAppBar(
        showBackArrow: true,
        title: Text(
          "Change Name",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(Ssizes.defaultSpace),
        child: Form(
          key: controller.updateUserNameFormKey,
          child: Column(
            children: [
              Text(
                "Use real name for easy verification. This name will apear on several pages",
              ),
              SizedBox(height: Ssizes.spacebtwSection),
              TextFormField(
                controller: controller.firstName,
                validator: (value) =>
                    SValidator.validateEmptyText("First Name", value),
                expands: false,
                decoration: InputDecoration(
                  labelText: SText.firstName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
              SizedBox(height: Ssizes.spaceBWInputFields),
              TextFormField(
                controller: controller.lastName,
                validator: (value) =>
                    SValidator.validateEmptyText("Last Name", value),
                expands: false,
                decoration: InputDecoration(
                  labelText: SText.lastName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
              SizedBox(height: Ssizes.spacebtwSection),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => controller.updateUserName(),
                  child: Text("Save"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
