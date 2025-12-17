import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s_store/fetaures/authentication/controllers.onboarding/onboarding.controller.dart';
import 'package:s_store/screens/Screen.onBoarding/widgets/Smooth_page_indicator.dart';
import 'package:s_store/screens/Screen.onBoarding/widgets/on_oarding_next.dart';
import 'package:s_store/screens/Screen.onBoarding/widgets/onboarding_page.dart';
import 'package:s_store/screens/Screen.onBoarding/widgets/onboarding_skip.dart';
import 'package:s_store/utils/constants/image_string.dart';
import 'package:s_store/utils/constants/text_strings.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndiactor,
            children: [
              onBoardingPage(
                image: SImage.onBoardingImage1,
                title: SText.onBoardingTitle1,
                subTitle: SText.onBoardingSubTitle1,
              ),

              onBoardingPage(
                image: SImage.onBoardingImage2,
                title: SText.onBoardingTitle2,
                subTitle: SText.onBoardingSubTitle2,
              ),
              onBoardingPage(
                image: SImage.onBoardingImage3,
                title: SText.onBoardingTitle3,
                subTitle: SText.onBoardingSubTitle3,
              ),
            ],
          ),
          //Skip button
          OnBoardingSkip(),
          //page indicator
          SmoothPageIndiactor(),
          //circuler button
          onBoardingNextButton(),
        ],
      ),
    );
  }
}
