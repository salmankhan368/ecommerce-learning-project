import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:s_store/common/widgets/successScreen/sucees_screen.dart';
import 'package:s_store/data/repository/repository.authentication/authentication_repository.dart';
import 'package:s_store/utils/constants/image_string.dart';
import 'package:s_store/utils/constants/text_strings.dart';
import 'package:s_store/utils/popUp/loader.dart';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();
  final isLoading = false.obs;
  @override
  void onInit() {
    sendEmailVerification();
    setTimerForAutoRedirect();
    super.onInit();
  }

  sendEmailVerification() async {
    try {
      await AuthenticationRepository.instance.sendEmailVerification();
      isLoading.value = false;
      SLoaders.successSnackBar(
        title: "Email Sent",
        message: "Please Check your inbox and verify your email",
      );
    } catch (e) {
      isLoading.value = false;
      SLoaders.errorSnackBar(title: "Oh Snap!", message: e.toString());
    }
  }

  //Timmer to redirect automatically on email verification
  setTimerForAutoRedirect() {
    isLoading.value = false;
    Timer.periodic(Duration(seconds: 3), (timer) async {
      final user = FirebaseAuth.instance.currentUser;
      await FirebaseAuth.instance.currentUser?.reload();
      if (user?.emailVerified ?? false) {
        timer.cancel();
        Get.offAll(
          () => SuccessScreen(
            image: SImage.succesReg,
            title: SText.yourAccountCreatedTitle,
            subtile: SText.yourAccountCreatedSubTitle,

            onPressed: () => AuthenticationRepository.instance.screenRedirect(),
          ),
        );
      }
    });
  }

  //Mannually check if email ix verified
  checkEmailVerificationStatus() async {
    isLoading.value = false;
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null && currentUser.emailVerified) {
      Get.offAll(
        () => SuccessScreen(
          image: SImage.succesReg,
          title: SText.yourAccountCreatedTitle,
          subtile: SText.yourAccountCreatedSubTitle,
          onPressed: () => AuthenticationRepository.instance.screenRedirect(),
        ),
      );
    } else {
      SLoaders.errorSnackBar(title: "Email Not verified");
    }
  }
}
