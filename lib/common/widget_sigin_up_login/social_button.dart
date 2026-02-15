import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s_store/fetaures/authentication/controllers/login/login_controller.dart';
import 'package:s_store/utils/constants/colors.dart';
import 'package:s_store/utils/constants/image_string.dart';
import 'package:s_store/utils/constants/sizes.dart';

class SFottersocial extends StatelessWidget {
  const SFottersocial({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: SColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () => controller.googleSigin(),

            icon: Image(
              width: Ssizes.iconma,
              height: Ssizes.iconma,
              image: AssetImage(SImage.google),
            ),
          ),
        ),
        SizedBox(width: Ssizes.spacebtwItem),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: SColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: Ssizes.iconma,
              height: Ssizes.iconma,
              image: AssetImage(SImage.facebook),
            ),
          ),
        ),
      ],
    );
  }
}
