import 'package:flutter/material.dart';
import 'package:s_store/common/layout/S_grid.layout.dart';
import 'package:s_store/common/widgets/brands/brands_showcase.dart';
import 'package:s_store/common/widgets/products/products_cards/product_card_verticle.dart';
import 'package:s_store/common/widgets/text/section_heading.dart';
import 'package:s_store/utils/constants/image_string.dart';
import 'package:s_store/utils/constants/sizes.dart';

class SCatogoriesTab extends StatelessWidget {
  const SCatogoriesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.all(Ssizes.defaultSpace),
          child: Column(
            children: [
              //Brands
              SBrandShowCase(
                images: [
                  SImage.productImage67,
                  SImage.productImage1,
                  SImage.productImage10,
                ],
              ),
              SizedBox(height: Ssizes.spacebtwItem),
              SSectionHeading(
                title: 'You Might like ',
                onPressed: () {},
                showBackAction: true,
              ),
              SGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => SProductCardVerticle(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
