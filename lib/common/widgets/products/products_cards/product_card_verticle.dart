import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:iconsax/iconsax.dart';
import 'package:s_store/common/Icon/s_circuler_icon.dart';
import 'package:s_store/common/images/s_round_image.dart';
import 'package:s_store/common/style/shadows.dart';
import 'package:s_store/common/widgets/custom_shape/containers/rounded_container.dart';
import 'package:s_store/common/widgets/text/S.brand_title_text.verified.dart';
import 'package:s_store/common/widgets/text/Sproduct_price.dart';
import 'package:s_store/common/widgets/text/product_tile_text.dart';
import 'package:s_store/fetaures/shop/screens/product_detail/product_detail.dart';
import 'package:s_store/utils/constants/colors.dart';
import 'package:s_store/utils/constants/image_string.dart';
import 'package:s_store/utils/constants/sizes.dart';
import 'package:s_store/utils/helpers/helper_functions.dart';

class SProductCardVerticle extends StatelessWidget {
  SProductCardVerticle({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(ProductDetailScreen()),
      child: Container(
        width: 180,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [ShadowStyle.verticleProductShadow],
          borderRadius: BorderRadius.circular(Ssizes.productImageRadius),
          color: dark ? SColors.darkGrey : SColors.white,
        ),
        child: Column(
          children: [
            SRoundedContainer(
              height: 180,
              padding: EdgeInsets.all(Ssizes.sa),
              backgroundColor: dark ? SColors.dark : SColors.light,
              child: Stack(
                children: [
                  SRoundImage(
                    imageUrl: SImage.productImage1,
                    applyImageRadius: true,
                  ),
                  //*Sale Tag
                  Positioned(
                    top: 13,
                    child: SRoundedContainer(
                      backgroundColor: SColors.secondary.withOpacity(0.8),
                      radius: Ssizes.sa,
                      padding: EdgeInsets.symmetric(
                        horizontal: Ssizes.lm,
                        vertical: Ssizes.sa,
                      ),
                      child: Text(
                        '25%',
                        style: Theme.of(
                          context,
                        ).textTheme.labelLarge!.apply(color: SColors.black),
                      ),
                    ),
                  ),
                  //Favrate icon
                  Positioned(
                    top: 0,
                    right: 0,
                    child: SCirculerIcon(
                      icon: Iconsax.heart5,
                      color: SColors.error,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: Ssizes.spacebtwItem / 2),

            ///--- DETAIL TEXT
            Padding(
              padding: EdgeInsets.only(left: Ssizes.sa),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SProductTileText(
                    title: 'Green Nike Air shoes',
                    smallSizes: true,
                  ),
                  SizedBox(height: Ssizes.spacebtwItem / 2),
                  SBrandTitleTextWithVerifiedIcon(title: 'Nike'),
                ],
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Sproduct_price(price: '35.99'),
                Container(
                  decoration: BoxDecoration(
                    color: SColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Ssizes.cardRadiusMa),
                      bottomRight: Radius.circular(Ssizes.productImageRadius),
                    ),
                  ),
                  child: SizedBox(
                    height: Ssizes.iconan * 1.2,
                    width: Ssizes.iconan * 1.2,
                    child: Center(
                      child: Icon(Iconsax.add, color: SColors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
