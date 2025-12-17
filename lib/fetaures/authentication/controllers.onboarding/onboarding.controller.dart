import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:s_store/screens/Screen.onBoarding/login/login_screen.dart';

class OnboardingController extends GetxController {
  static OnboardingController
  //its shortcut  which take controller from get.find
  get instance
  //arrow mean return
  =>
      //this important concept of getx which find and return before stored controller
      Get.find();
  //Variables
  final pageController = PageController();
  Rx<int> cureentPageIndex = 0.obs;

  ///update current index when page is scroll
  void updatePageIndiactor(index) => cureentPageIndex.value = index;

  ///jump to the sppecific dot selected page
  void dotNavigationClick(index) {
    cureentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  ///jump to selected page
  void nextPage() {
    if (cureentPageIndex.value == 2) {
      Get.offAll(LoginScreen());
      //Get.to(LoginScreen())
    } else {
      int page = cureentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  ///update current index and jump to last page
  void skipPage() {
    cureentPageIndex.value = 2;
    pageController.jumpTo(2);
  }
}
