import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:s_store/data/repository/repository.authentication/authentication_repository.dart';
import 'package:s_store/fetaures/authentication/controllers.onboarding/network/network_manger.dart';
import 'package:s_store/fetaures/personalization/controller/user_controller.dart';
import 'package:s_store/utils/constants/image_string.dart';
import 'package:s_store/utils/popUp/full_screen_loader.dart';
import 'package:s_store/utils/popUp/loader.dart';

class LoginController extends GetxController {
  //variables
  final rememberMe = false.obs;
  final hidePassword = true.obs;
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  final userController = Get.put(UserController());
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  @override
  void onInit() {
    email.text = localStorage.read("REMEMBER_ME_EMAIL") ?? "";
    password.text = localStorage.read("REMEMBER_ME_PASSWORD") ?? "";
    super.onInit();
  }

  Future<void> emailAndPasswordSiginIn() async {
    try {
      SFullScreenLoader.openLoadingDialog("Logging you in...", SImage.docer);
      //check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        SFullScreenLoader.stopLoading();
        return;
      }
      //form validation

      if (!loginFormKey.currentState!.validate()) {
        SFullScreenLoader.stopLoading();
        return;
      }
      if (rememberMe.value) {
        localStorage.write("REMEMBER_ME_EMAIL", email.text.trim());
        localStorage.write("REMEMBER_ME_PASSWORD", password.text.trim());
      }
      //login user with email and password
      final userCredentials = await AuthenticationRepository.instance
          .loginWithEmailAndPassword(email.text.trim(), password.text.trim());
      await userCredentials.user?.reload();
      //Remove loader
      SFullScreenLoader.stopLoading();
      //redirct screen
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      SFullScreenLoader.stopLoading();
      SLoaders.errorSnackBar(title: "Oh snap", message: e.toString());
    }
  }

  Future<void> googleSigin() async {
    try {
      SFullScreenLoader.openLoadingDialog("Logging you in ...", SImage.docer);
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        SFullScreenLoader.stopLoading();
        return;
      }
      final userCredentials = await AuthenticationRepository.instance
          .signInWithGoogle();
      await userController.saveUserRecord(userCredentials);
      //remove loader
      SFullScreenLoader.stopLoading();
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      SLoaders.errorSnackBar(title: "Oh Snap", message: e.toString());
    }
  }
}
