import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:s_store/fetaures/authentication/controllers.onboarding/network/network_manger.dart';
import 'package:s_store/utils/constants/image_string.dart';
import 'package:s_store/utils/popUp/full_screen_loader.dart';
import 'package:s_store/utils/popUp/loader.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  ///Variable
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final userName = TextEditingController();
  final email = TextEditingController();
  final phoneNumber = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();
  //signup FUnction
  Future<void> signup() async {
    try {
      SFullScreenLoader.openLoadingDialog(
        'We are processing your information...',
        SImage.docer,
      );
      //chek internet
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected)
        // SFullScreenLoader.stopLoading();
        return;

      if (!signupFormKey.currentState!.validate())
        //  SFullScreenLoader.stopLoading();
        return;
      if (!privacyPolicy.value) {
        return SLoaders.warningSnackBar(
          title: 'Accept privacy policy',
          message:
              'In order to create account,you must have to read and accept privacy policy & term of use',
        );
      }
    } catch (e) {
      SLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    } finally {
      SFullScreenLoader.stopLoading();
    }
  }
}
