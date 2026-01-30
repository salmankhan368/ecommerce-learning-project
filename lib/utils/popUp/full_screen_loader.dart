import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s_store/common/widgets/loader/animation.loader.dart';
import 'package:s_store/utils/constants/colors.dart';
import 'package:s_store/utils/helpers/helper_functions.dart';

class SFullScreenLoader {
  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context: Get.context!,
      barrierDismissible: false,
      builder: (_) => PopScope(
        canPop: false,

        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: SHelperFunctions.isDarkMode(Get.context!)
              ? SColors.dark
              : SColors.light,
          child: Column(
            children: [
              SizedBox(height: 250),
              SAnimationLoaderWidget(text: text, animation: animation),
            ],
          ),
        ),
      ),
    );
  }

  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
