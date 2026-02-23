import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:s_store/data/repository/repository.authentication/authentication_repository.dart';
import 'package:s_store/fetaures/authentication/controllers.onboarding/network/network_manger.dart';
import 'package:s_store/screens/password_configuration/reset_password.dart';
import 'package:s_store/utils/constants/image_string.dart';
import 'package:s_store/utils/popUp/full_screen_loader.dart';
import 'package:s_store/utils/popUp/loader.dart';

class ForgetPasswordController extends GetxController {
  static ForgetPasswordController get instance => Get.find();
  //variable
  final email = TextEditingController();
  GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>();
  sendPasswordResetEmail() async {
    try {
      SFullScreenLoader.openLoadingDialog(
        "Processing your request...",
        SImage.docer,
      );
      //check internet
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        SFullScreenLoader.stopLoading();
        return;
      }
      if (!forgetPasswordFormKey.currentState!.validate()) {
        SFullScreenLoader.stopLoading();
        return;
      }
      await AuthenticationRepository.instance.sendPasswordResetEmail(
        email.text.trim(),
      );
      SFullScreenLoader.stopLoading();
      SLoaders.successSnackBar(
        title: "Email sent",
        message: "Email link sent to Reset your password",
      );
      Get.to(() => ResetPasswordScreen(email: email.text.trim()));
    } catch (e) {
      SFullScreenLoader.stopLoading();
      SLoaders.errorSnackBar(title: "Oh Snap", message: e.toString());
    }
  }

  resendPasswordResetEmail(String email) async {
    try {
      SFullScreenLoader.openLoadingDialog(
        "Processing your request..",
        SImage.docer,
      );
      //check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        SFullScreenLoader.stopLoading();
        await AuthenticationRepository.instance.sendPasswordResetEmail(email);
        SFullScreenLoader.stopLoading();
        SLoaders.successSnackBar(
          title: "Email sent",
          message: "Email link sent to Reset your password".tr,
        );
      }
    } catch (e) {
      SFullScreenLoader.stopLoading();
      SLoaders.errorSnackBar(title: "Oh Snap", message: e.toString());
    }
  }
}
