import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:s_store/data/repository/user/user_repository.dart';
import 'package:s_store/fetaures/authentication/controllers.onboarding/network/network_manger.dart';
import 'package:s_store/fetaures/personalization/controller/user_controller.dart';
import 'package:s_store/fetaures/personalization/screens/profile/profile.dart';
import 'package:s_store/utils/constants/image_string.dart';
import 'package:s_store/utils/popUp/full_screen_loader.dart';
import 'package:s_store/utils/popUp/loader.dart';

class UpdateNameController extends GetxController {
  static UpdateNameController get instance => Get.find();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final userController = UserController.instance;
  final userRepository = Get.put(UserRepository());
  GlobalKey<FormState> updateUserNameFormKey = GlobalKey<FormState>();
  @override
  void onInit() {
    initalizeNames();
    super.onInit();
  }

  Future<void> initalizeNames() async {
    firstName.text = userController.user.value.firstName;
    lastName.text = userController.user.value.lastName;
  }

  Future<void> updateUserName() async {
    try {
      SFullScreenLoader.openLoadingDialog(
        "We are update your information...",
        SImage.docer,
      );
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        SFullScreenLoader.stopLoading();
        return;
      }
      //form validation
      if (!updateUserNameFormKey.currentState!.validate()) {
        SFullScreenLoader.stopLoading();
        return;
      }
      //update user's first & last in firestore firebase
      Map<String, dynamic> name = {
        'FirstName': firstName.text.trim(),
        'LastName': lastName.text.trim(),
      };

      await userRepository.updateSingleField(name);
      //updte the rx user value
      userController.user.value.firstName = firstName.text.trim();
      userController.user.value.lastName = lastName.text.trim();
      SFullScreenLoader.stopLoading();
      SLoaders.successSnackBar(
        title: "Congratulations",
        message: "Your name has been updated",
      );
      Get.off(() => ProfileScreen());
    } catch (e, stack) {
      print("update error:$e");
      print(e);
      print(stack);
      SFullScreenLoader.stopLoading();
      SLoaders.errorSnackBar(title: "Oh snap!", message: e.toString());
    }
  }
}
