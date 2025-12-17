import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:s_store/fetaures/authentication/controllers.onboarding/onboarding.controller.dart';
import 'package:s_store/utils/constants/colors.dart';
import 'package:s_store/utils/constants/sizes.dart';
import 'package:s_store/utils/device/device_utilty.dart';
import 'package:s_store/utils/helpers/helper_functions.dart';

class onBoardingNextButton extends StatelessWidget {
  const onBoardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: SDeviceUtils.getBottomNavigationBarHeight(),
      right: Ssizes.defaultSpace,
      child: ElevatedButton(
        onPressed: () => OnboardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),

          backgroundColor: dark ? SColors.primary : SColors.black,
        ),
        child: Icon(Iconsax.arrow_right),
      ),
    );
  }
}
