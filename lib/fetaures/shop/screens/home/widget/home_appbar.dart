import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s_store/common/products.cart/cart_menu_icon.dart';
import 'package:s_store/common/widgets/app.bar/app_bar.dart';
import 'package:s_store/fetaures/shop/screens/cart/cart_screen.dart';
import 'package:s_store/utils/constants/colors.dart';
import 'package:s_store/utils/constants/text_strings.dart';

class SHomeAppBar extends StatelessWidget {
  const SHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SAppBar(
      title: Column(
        children: [
          Text(
            SText.homeAppBarTitle,
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.apply(color: SColors.grey),
          ),
          Text(
            SText.homeAppBarsubTitle,
            style: Theme.of(
              context,
            ).textTheme.headlineMedium!.apply(color: SColors.white),
          ),
        ],
      ),
      actions: [
        SCartCounterIcon(
          onPressed: () => Get.to(() => CartScreen()),
          iconColor: SColors.white,
        ),
      ],
    );
  }
}
