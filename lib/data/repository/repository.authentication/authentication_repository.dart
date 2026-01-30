import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:s_store/screens/Screen.onBoarding/login/login_screen.dart';
import 'package:s_store/screens/Screen.onBoarding/onboarding.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();
  //variable
  final deviceStorage = GetStorage();
  //
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }
  //Function to some revelant screen

  screenRedirect() async {
    if (kDebugMode) {
      print('Get Storage');
      print(deviceStorage.read('ISFirstTime'));
    }
    //local storage

    deviceStorage.writeIfNull('IsFirstTime', true);

    deviceStorage.read('IsFirstTime') != true
        ? Get.off(() => LoginScreen())
        : Get.off(() => OnboardingScreen());
  }
}
