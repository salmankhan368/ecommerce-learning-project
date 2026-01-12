import 'package:flutter/material.dart';
import 'package:get/get.dart';
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

class SPoductCardHorixontal extends StatelessWidget {
  const SPoductCardHorixontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => ProductDetailScreen()),
      child: Container(
        width: 310,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [ShadowStyle.verticleProductShadow],
          borderRadius: BorderRadius.circular(Ssizes.productImageRadius),
          color: dark ? SColors.darkerGrey : SColors.lightGrey,
        ),
        child: Row(
          children: [
            SRoundedContainer(
              height: 120,
              padding: EdgeInsets.all(Ssizes.sa),
              backgroundColor: dark ? SColors.dark : SColors.light,
              child: Stack(
                children: [
                  //thumbnail
                  SizedBox(
                    height: 120,
                    width: 120,
                    child: SRoundImage(
                      imageUrl: SImage.productImage1,
                      applyImageRadius: true,
                    ),
                  ),
                  Positioned(
                    top: 12,
                    child: SRoundedContainer(
                      radius: Ssizes.sa,
                      backgroundColor: SColors.secondary.withOpacity(0.8),
                      padding: EdgeInsets.symmetric(
                        vertical: Ssizes.sa,
                        horizontal: Ssizes.sa,
                      ),
                      child: Text(
                        '25%',
                        style: Theme.of(
                          context,
                        ).textTheme.labelLarge!.apply(color: SColors.black),
                      ),
                    ),
                  ),
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

            ///detail
            SizedBox(
              width: 170,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: Ssizes.sa,
                  right: Ssizes.sa,
                ),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SProductTileText(
                          title: 'Green Nike Half Sleeves Shoes',
                          smallSizes: true,
                        ),
                        SizedBox(height: Ssizes.spacebtwItem / 2),
                        SBrandTitleTextWithVerifiedIcon(title: 'Nike'),
                      ],
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(child: Sproduct_price(price: '220')),
                        Container(
                          decoration: BoxDecoration(
                            color: SColors.dark,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(Ssizes.cardRadiusMa),
                              bottomRight: Radius.circular(
                                Ssizes.productImageRadius,
                              ),
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
            ),
          ],
        ),
      ),
    );
  }
}
