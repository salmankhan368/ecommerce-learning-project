import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
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
  Rx<int> currentPageIndex = 0.obs;

  ///update current index when page is scroll
  void updatePageIndiactor(index) => currentPageIndex.value = index;

  ///jump to the sppecific dot selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  ///jump to selected page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      final storage = GetStorage();
      // if (kDebugMode) {
      //   print('Get Storage button');
      //   print(storage.read('ISFirstTime'));
      // }
      storage.write('IsFirstTime', false);
      if (kDebugMode) {
        print('Get Storage');
        print(storage.read('ISFirstTime'));
      }
      Get.offAll(LoginScreen());
      //Get.to(LoginScreen())
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  ///update current index and jump to last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpTo(2);
  }
}
