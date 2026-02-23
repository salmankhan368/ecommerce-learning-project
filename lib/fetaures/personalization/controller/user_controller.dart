import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import 'package:s_store/data/repository/user/user_repository.dart';
import 'package:s_store/fetaures/personalization/models/user_model.dart';

import 'package:s_store/utils/popUp/loader.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();
  final userRepository = Get.put(UserRepository());
  final profileLoading = false.obs;
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
    } catch (e) {
      SLoaders.warningSnackBar(
        title: "Data not saved",
        message:
            "SomeThing went wrong while saving you information.You can re-save your data in your profile",
      );
    }
  }

  //   // //delete account detail
  //   // void deleteAccountWarningPopup(){
  //   //   Get.defaultDialog(
  //   //     contentPadding: EdgeInsets.all(Ssizes.ma),
  //   //     title: "Delete Account",
  //   //     middleText: "Are you sure you want to delete your account permannently?  This action is not reversible and all of your data will removed permannently",
  //   //     confirm: ElevatedButton(onPressed: ()=>async=>deleteUserAccount(), child: child)
  //   //   );
  //   // }
}
