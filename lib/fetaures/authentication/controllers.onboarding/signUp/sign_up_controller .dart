import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:s_store/data/repository/repository.authentication/authentication_repository.dart';
import 'package:s_store/data/repository/user/user_repository.dart';
import 'package:s_store/fetaures/authentication/controllers.onboarding/network/network_manger.dart';
import 'package:s_store/fetaures/personalization/models/user_model.dart';
import 'package:s_store/screens/Screen.onBoarding/login/signup/widgets/verify_email.dart';
import 'package:s_store/utils/constants/image_string.dart';
import 'package:s_store/utils/popUp/full_screen_loader.dart';
import 'package:s_store/utils/popUp/loader.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  ///Variable
  final isLoading = false.obs;
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final userName = TextEditingController();
  final email = TextEditingController();
  final phoneNumber = TextEditingController();
  final password = TextEditingController();
  final profilePicture = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();
  //signup FUnction
  Future<void> signup() async {
    try {
      isLoading.value = true;
      await Future.delayed(Duration(seconds: 3));
      SFullScreenLoader.openLoadingDialog(
        'We are processing your information...',
        SImage.docer,
      );
      //chek internet
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        isLoading.value = false;
        SFullScreenLoader.stopLoading();
        return;
      }

      if (!signupFormKey.currentState!.validate()) {
        isLoading.value = false;
        SFullScreenLoader.stopLoading();
        return;
      }
      if (!privacyPolicy.value) {
        isLoading.value = false;
        SLoaders.warningSnackBar(
          title: 'Accept privacy policy',
          message:
              'In order to create account,you must have to read and accept privacy policy & term of use',
        );
        return;
      }

      ///register user in the firebase authentication .and save user data in firebase .
      final userCredential = await AuthenticationRepository.instance
          .registerEmailAndPassword(email.text.trim(), password.text.trim());
      await userCredential.user!.sendEmailVerification();
      final newUser = UserModel(
        id: userCredential.user!.uid,
        username: userName.text.trim(),
        email: email.text.trim(),
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: "",
      );
      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);
      //show sucees snakbar
      SFullScreenLoader.stopLoading();
      isLoading.value = false;
      SLoaders.successSnackBar(
        title: "Congratulations",
        message: "Your account has been created! verify email to continue",
      );
      Get.to(() => VerifyEmail(email: email.text.trim()));
    } catch (e) {
      isLoading.value = false;
      SFullScreenLoader.stopLoading();
      SLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}
