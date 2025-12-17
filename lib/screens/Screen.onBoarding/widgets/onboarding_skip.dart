import 'package:flutter/material.dart';
import 'package:s_store/fetaures/authentication/controllers.onboarding/onboarding.controller.dart';
import 'package:s_store/utils/constants/sizes.dart' show Ssizes;
import 'package:s_store/utils/device/device_utilty.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: SDeviceUtils.getAppBarHeight(),
      right: Ssizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnboardingController.instance.skipPage(),
        child: Text('Skip'),
      ),
    );
  }
}
