import 'package:flutter/material.dart';
import 'package:s_store/common/widgets/chip/chip_choices.dart';
import 'package:s_store/common/widgets/custom_shape/containers/rounded_container.dart';
import 'package:s_store/common/widgets/text/product_tile_text.dart';
import 'package:s_store/common/widgets/text/section_heading.dart';
import 'package:s_store/utils/constants/colors.dart';
import 'package:s_store/utils/constants/sizes.dart';
import 'package:s_store/utils/helpers/helper_functions.dart';

class SProductAttributes extends StatelessWidget {
  const SProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SRoundedContainer(
          backgroundColor: dark ? SColors.darkerGrey : SColors.white,
          padding: EdgeInsets.all(Ssizes.sa),
          child: Column(
            children: [
              Row(
                children: [
                  SSectionHeading(title: 'Variation', showBackAction: false),
                  SizedBox(width: Ssizes.spacebtwItem),
                  Column(
                    children: [
                      Row(
                        children: [
                          SProductTileText(title: 'price : ', smallSizes: true),
                          SizedBox(width: Ssizes.spacebtwItem),
                          Text(
                            '\$25',
                            style: Theme.of(context).textTheme.titleMedium!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          SizedBox(width: Ssizes.spacebtwItem),
                          SProductTileText(title: '\$20'),
                        ],
                      ),
                      Row(
                        children: [
                          SProductTileText(title: 'stock', smallSizes: true),
                          SizedBox(width: Ssizes.spacebtwItem),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                      SProductTileText(
                        title:
                            'This is the description of the product and it can go\n up to max 4 lines',
                        smallSizes: true,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: Ssizes.spacebtwItem),
        Column(
          children: [
            SSectionHeading(title: 'Colors'),
            SizedBox(height: Ssizes.spacebtwItem / 2),
            SChipChoices(text: '', selected: true),
          ],
        ),
      ],
    );
  }
}
