import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:s_store/common/Icon/s_circuler_icon.dart';
import 'package:s_store/common/layout/S_grid.layout.dart';
import 'package:s_store/common/widgets/app.bar/app_bar.dart';
import 'package:s_store/common/widgets/products/products_cards/product_card_verticle.dart';
import 'package:s_store/fetaures/shop/screens/home/home.dart';
import 'package:s_store/utils/constants/sizes.dart';

class WhishList extends StatelessWidget {
  const WhishList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(
        title: Text(
          'Whishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          SCirculerIcon(
            icon: Iconsax.add,
            onPressed: () => Get.to(HomeScreen()),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(Ssizes.defaultSpace),
        child: Column(
          children: [
            SGridLayout(
              itemCount: 4,
              itemBuilder: (_, index) => SProductCardVerticle(),
            ),
          ],
        ),
      ),
    );
  }
}
