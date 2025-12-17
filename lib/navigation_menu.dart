import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:s_store/fetaures/personalization/screens/address/setting/setting.dart';
import 'package:s_store/fetaures/shop/screens/Wishlist/whish_list.dart';
import 'package:s_store/fetaures/shop/screens/home/home.dart';
import 'package:s_store/fetaures/shop/screens/store/store.dart';
import 'package:s_store/utils/constants/colors.dart';
import 'package:s_store/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = SHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          backgroundColor: dark ? SColors.black : SColors.white,
          indicatorColor: dark
              ? SColors.white.withOpacity(0.1)
              : SColors.black.withOpacity(0.1),

          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [HomeScreen(), StoreScreen(), WhishList(), SettingScreen()];
}
