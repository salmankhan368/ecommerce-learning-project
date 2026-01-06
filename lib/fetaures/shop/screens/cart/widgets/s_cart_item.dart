import 'package:flutter/material.dart';
import 'package:s_store/common/images/s_round_image.dart';
import 'package:s_store/common/widgets/text/S.brand_title_text.verified.dart';
import 'package:s_store/common/widgets/text/product_tile_text.dart';
import 'package:s_store/utils/constants/colors.dart';
import 'package:s_store/utils/constants/image_string.dart';
import 'package:s_store/utils/constants/sizes.dart';
import 'package:s_store/utils/helpers/helper_functions.dart';

class SCartItem extends StatelessWidget {
  const SCartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SRoundImage(
          imageUrl: SImage.productImage7,
          width: 60,
          height: 60,
          backgroundColor: SHelperFunctions.isDarkMode(context)
              ? SColors.darkerGrey
              : SColors.light,
        ),
        SizedBox(height: Ssizes.spacebtwItem),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SBrandTitleTextWithVerifiedIcon(title: 'Nike'),
              Flexible(
                child: SProductTileText(
                  title: 'Running Shoes, Basketball Shoes,',
                  maxLines: 2,
                ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Color',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: ' ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: 'Red',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: ' ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: 'Size',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'Uk 08',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
