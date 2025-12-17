import 'package:flutter/material.dart';
import 'package:s_store/fetaures/authentication/controllers.onboarding/onboarding.controller.dart';
import 'package:s_store/utils/constants/colors.dart';
import 'package:s_store/utils/constants/sizes.dart';
import 'package:s_store/utils/device/device_utilty.dart';
import 'package:s_store/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SmoothPageIndiactor extends StatelessWidget {
  const SmoothPageIndiactor({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    final controller = OnboardingController.instance;
    return Positioned(
      bottom: SDeviceUtils.getBottomNavigationBarHeight(),
      left: Ssizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? SColors.light : SColors.dark,
          dotWidth: 6,
        ),
      ),
    );
  }
}
