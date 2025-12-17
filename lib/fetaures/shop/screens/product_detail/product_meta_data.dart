import 'package:flutter/material.dart';
import 'package:s_store/common/images/s.circuler.image.dart';
import 'package:s_store/common/widgets/custom_shape/containers/rounded_container.dart';
import 'package:s_store/common/widgets/text/S.brand_title_text.verified.dart';
import 'package:s_store/common/widgets/text/Sproduct_price.dart';
import 'package:s_store/common/widgets/text/product_tile_text.dart';
import 'package:s_store/utils/constants/colors.dart';
import 'package:s_store/utils/constants/enums.dart';
import 'package:s_store/utils/constants/image_string.dart';
import 'package:s_store/utils/constants/sizes.dart';
import 'package:s_store/utils/helpers/helper_functions.dart';

class SProductMetaData extends StatelessWidget {
  const SProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = SHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SRoundedContainer(
              radius: Ssizes.sa,
              backgroundColor: SColors.secondary.withOpacity(0.8),
              padding: EdgeInsets.symmetric(
                horizontal: Ssizes.sa,
                vertical: Ssizes.sa,
              ),
              child: Text(
                '25%',
                style: Theme.of(
                  context,
                ).textTheme.labelLarge!.apply(color: SColors.black),
              ),
            ),
            SizedBox(width: Ssizes.spacebtwItem),
            Text(
              '\$250',
              style: Theme.of(context).textTheme.titleMedium!.apply(
                decoration: TextDecoration.lineThrough,
              ),
            ),
            SizedBox(width: Ssizes.spacebtwItem / 1.5),
            Sproduct_price(price: '175', isLarge: true),
          ],
        ),
        SizedBox(height: Ssizes.spacebtwItem / 1.5),
        SProductTileText(title: 'Green Nike Sports Shirt'),
        SizedBox(height: Ssizes.spacebtwItem / 1.5),
        Row(
          children: [
            SProductTileText(title: 'Status'),
            SizedBox(width: Ssizes.spacebtwItem / 1.5),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        SizedBox(height: Ssizes.spacebtwItem / 1.5),
        Row(
          children: [
            SCirculerImage(
              image: SImage.cosmeticsIcon,
              width: 32,
              height: 32,
              overlayColor: darkMode ? SColors.white : SColors.black,
            ),
            SBrandTitleTextWithVerifiedIcon(
              title: 'Nike',
              brandTextSize: TextSizes.medium,
            ),
          ],
        ),
      ],
    );
  }
}
