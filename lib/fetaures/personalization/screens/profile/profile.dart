import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:s_store/common/images/s.circuler.image.dart';
import 'package:s_store/common/widgets/app.bar/app_bar.dart';
import 'package:s_store/common/widgets/text/section_heading.dart';
import 'package:s_store/fetaures/personalization/controller/user_controller.dart';
import 'package:s_store/fetaures/personalization/screens/profile/widgets/change_name.dart';
import 'package:s_store/fetaures/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:s_store/utils/constants/colors.dart';
import 'package:s_store/utils/constants/image_string.dart';
import 'package:s_store/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return Scaffold(
      appBar: SAppBar(showBackArrow: true, title: Text('Profile')),
      body: Padding(
        padding: const EdgeInsets.all(Ssizes.defaultSpace),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: SCirculerImage(image: SImage.user, width: 80, height: 80),
            ),
            TextButton(onPressed: () {}, child: Text('Change your profile')),
            SizedBox(height: Ssizes.spacebtwItem / 2),
            Divider(),
            SSectionHeading(
              title: 'Profile Information',
              showBackAction: false,
            ),
            SizedBox(height: Ssizes.spacebtwItem),
            Obx(
              () => SprofileMenu(
                value: controller.user.value.fullName,
                title: 'Name',
                onPressed: () => Get.to(() => ChangeName()),
              ),
            ),
            SizedBox(height: Ssizes.spacebtwItem),
            SprofileMenu(
              value: controller.user.value.username,
              title: 'Username',
              onPressed: () {},
            ),
            SizedBox(height: Ssizes.spacebtwItem),
            Divider(),
            SizedBox(height: Ssizes.spacebtwItem),
            SprofileMenu(
              title: "User ID",
              value: controller.user.value.id,
              onPressed: () {},
              icon: Iconsax.copy,
            ),
            SizedBox(height: Ssizes.spacebtwItem),
            SprofileMenu(
              title: 'E-mail',
              value: controller.user.value.email,
              onPressed: () {},
              icon: Iconsax.arrow_right_34,
            ),
            SizedBox(height: Ssizes.spacebtwItem),
            SprofileMenu(
              title: 'Phone Number',
              value: controller.user.value.phoneNumber,
              onPressed: () {},
              icon: Iconsax.arrow_right_34,
            ),
            SizedBox(height: Ssizes.spacebtwItem),
            SprofileMenu(
              title: 'Gender',
              value: 'Male',
              onPressed: () {},
              icon: Iconsax.arrow_right_34,
            ),
            SizedBox(height: Ssizes.spacebtwItem),
            SprofileMenu(
              title: 'Date of Birth',
              value: '21 Jan 2005',
              onPressed: () {},
              icon: Iconsax.arrow_right_34,
            ),
            SizedBox(height: Ssizes.spacebtwItem),
            Divider(),
            SizedBox(height: Ssizes.spaceBWInputFields),
            TextButton(
              onPressed: () {},
              child: Text(
                'Close Account',
                style: TextStyle(color: SColors.error),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
