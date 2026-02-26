import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:s_store/data/repository/repository.authentication/authentication_repository.dart';

import 'package:s_store/data/repository/user/user_repository.dart';
import 'package:s_store/fetaures/authentication/controllers.onboarding/network/network_manger.dart';
import 'package:s_store/fetaures/personalization/models/user_model.dart';
import 'package:s_store/fetaures/personalization/screens/profile/widgets/re_authenticate_user_login_form.dart';
import 'package:s_store/screens/Screen.onBoarding/login/login_screen.dart';
import 'package:s_store/utils/constants/colors.dart';
import 'package:s_store/utils/constants/image_string.dart';
import 'package:s_store/utils/constants/sizes.dart';
import 'package:s_store/utils/popUp/full_screen_loader.dart';

import 'package:s_store/utils/popUp/loader.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();
  final userRepository = Get.put(UserRepository());
  final profileLoading = false.obs;
  final imageLoading = false.obs;
  Rx<UserModel> user = UserModel.empty().obs;
  GlobalKey<FormState> reAuthFormKey = GlobalKey<FormState>();
  final hidePassword = false.obs;
  final rVerifyEmail = TextEditingController();
  final rVerifyPassword = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    fetchUserRecord();
  }

  //fetch user record
  Future<void> fetchUserRecord() async {
    try {
      profileLoading.value = true;

      final user = await userRepository.fetchUserDetail();
      this.user(user);
    } catch (e) {
      user(UserModel.empty());
    } finally {
      profileLoading.value = false;
    }
  }

  //save user record
  Future<void> saveUserRecord(UserCredential? userCredentials) async {
    try {
      if (user.value.id.isEmpty) {
        if (userCredentials != null) {
          //convert name to first name and last name
          final nameParts = UserModel.nameParts(
            userCredentials.user!.displayName ?? "",
          );
          final userName = UserModel.generateUsername(
            userCredentials.user!.displayName ?? "",
          );
          //Map data
          final user = UserModel(
            id: userCredentials.user!.uid,
            username: userName,
            email: userCredentials.user!.email ?? "",
            firstName: nameParts[0],
            lastName: nameParts.length > 1 ? nameParts.sublist(1).join("") : "",
            phoneNumber: userCredentials.user!.phoneNumber ?? "",
            profilePicture: userCredentials.user!.photoURL ?? "",
          );
          await userRepository.saveUserRecord(user);
        }
      }
    } catch (e) {
      SLoaders.warningSnackBar(
        title: "Data not saved",
        message:
            "SomeThing went wrong while saving you information.You can re-save your data in your profile",
      );
    }
  }

  //delete account detail
  void deleteAccountWarningPopup() {
    Get.defaultDialog(
      contentPadding: EdgeInsets.all(Ssizes.ma),
      title: "Delete Account",

      middleText:
          "Are you sure you want to delete your account permannently?  This action is not reversible and all of your data will removed permannently",
      confirm: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: SColors.error,
          side: BorderSide(color: SColors.error),
        ),
        onPressed: () async => deleteUserAccount(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Ssizes.an),
          child: Text("Delete"),
        ),
      ),
      cancel: OutlinedButton(
        onPressed: () => Navigator.of(Get.overlayContext!).pop(),
        child: Text('Cancel'),
      ),
    );
  }

  void deleteUserAccount() async {
    try {
      SFullScreenLoader.openLoadingDialog("Processing", SImage.docer);
      final auth = AuthenticationRepository.instance;
      final provider = auth.authUser!.providerData
          .map((e) => e.providerId)
          .first;
      if (provider == "google.com") {
        await auth.signInWithGoogle();
        await auth.deteteAccount();
        SFullScreenLoader.stopLoading();
        Get.offAll(() => LoginScreen());
      } else if (provider == 'password') {
        SFullScreenLoader.stopLoading();
        Get.to(() => ReAuthenticateUserLoginForm());
      }
    } catch (e) {
      SFullScreenLoader.stopLoading();
      SLoaders.warningSnackBar(title: "Oh snap!", message: e.toString());
    }
  }

  //reauthenticate before deleting
  Future<void> reAuthenticationEmailAndPasswordUser() async {
    try {
      SFullScreenLoader.openLoadingDialog("Processing", SImage.docer);
      //check internet
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        SFullScreenLoader.stopLoading();
        return;
      }
      if (!reAuthFormKey.currentState!.validate()) {
        SFullScreenLoader.stopLoading();
        return;
      }
      await AuthenticationRepository.instance
          .reAuthenticationWithEmailAndPassword(
            rVerifyEmail.text.trim(),
            rVerifyPassword.text.trim(),
          );
      await AuthenticationRepository.instance.deteteAccount();
      SFullScreenLoader.stopLoading();
      Get.offAll(() => LoginScreen());
    } catch (e) {
      SFullScreenLoader.stopLoading();
      SLoaders.warningSnackBar(title: "Oh Snap!", message: e.toString());
    }
  }

  //upload profile pic
  uploadUserProfilePicture() async {
    try {
      final image = await ImagePicker().pickImage(
        source: ImageSource.gallery,
        imageQuality: 70,
        maxHeight: 512,
        maxWidth: 512,
      );
      if (image != null) {
        imageLoading.value = true;
        final imageUrl = await userRepository.uploadImage(
          "Users/Images/Profile/",
          image,
        );
        Map<String, dynamic> json = {'ProfilePicture': imageUrl};
        await userRepository.updateSingleField(json);
        user.value.profilePicture = imageUrl;
        user.refresh();
        SLoaders.successSnackBar(
          title: "Congratulations",
          message: "The profile picture has been Updated",
        );
      }
    } catch (e) {
      SLoaders.errorSnackBar(
        title: "Oh Snap!",
        message: "Something went wrong $e",
      );
    } finally {
      imageLoading.value = false;
    }
  }
}
