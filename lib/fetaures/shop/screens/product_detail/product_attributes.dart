import 'package:flutter/material.dart';

import 'package:s_store/common/widgets/chip/chip_choices.dart';
import 'package:s_store/common/widgets/custom_shape/containers/circuler_container.dart';
import 'package:s_store/common/widgets/custom_shape/containers/rounded_container.dart';
import 'package:s_store/common/widgets/text/Sproduct_price.dart';
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
      children: [
        SRoundedContainer(
          backgroundColor: dark ? SColors.darkGrey : SColors.grey,
          padding: EdgeInsets.all(Ssizes.lm),
          child: Column(
            children: [
              Row(
                children: [
                  SSectionHeading(title: 'Varation', showBackAction: false),
                  SizedBox(width: Ssizes.spacebtwItem),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SProductTileText(title: 'Price'),
                          SizedBox(width: Ssizes.spacebtwItem),
                          Text(
                            '\$25',
                            style: Theme.of(context).textTheme.titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          SizedBox(width: Ssizes.spacebtwItem),
                          Sproduct_price(price: '20'),
                        ],
                      ),
                      //stock
                      Row(
                        children: [
                          SProductTileText(title: 'Stock'),
                          SizedBox(width: Ssizes.spacebtwItem / 2),
                          Text('In stock'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SProductTileText(
                title:
                    'This is the description of product and it can go upto 4 max lines',
              ),
            ],
          ),
        ),
        SizedBox(height: Ssizes.spacebtwItem),
        //product attributes
        Column(
          children: [
            SSectionHeading(title: 'Colors'),
            SizedBox(height: Ssizes.spacebtwItem / 2),
            Wrap(
              children: [
                SChoiceChip(
                  text: 'Green',
                  selected: true,
                  onSelected: (value) {},
                ),

                SChoiceChip(
                  text: 'Yellow',
                  selected: false,
                  onSelected: (value) {},
                ),
                SChoiceChip(
                  text: 'Red',
                  selected: true,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
        Column(
          children: [
            SizedBox(height: Ssizes.spacebtwItem / 2),
            SSectionHeading(title: 'Sizes'),
            Wrap(
              spacing: 5,
              children: [
                SChoiceChip(
                  text: 'eu 35s',
                  selected: true,
                  onSelected: (value) {},
                ),
                SChoiceChip(
                  text: 'EU 34',
                  selected: true,
                  onSelected: (value) {},
                ),
                SChoiceChip(
                  text: 'EU 36',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
