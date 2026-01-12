import 'package:flutter/material.dart';
import 'package:s_store/common/images/s_round_image.dart';
import 'package:s_store/common/widgets/app.bar/app_bar.dart';
import 'package:s_store/common/widgets/products/products_cards/product_card_horizontal.dart';
import 'package:s_store/common/widgets/text/section_heading.dart';
import 'package:s_store/utils/constants/image_string.dart';
import 'package:s_store/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(showBackArrow: true, title: Text('Sports')),
      body: Padding(
        padding: EdgeInsets.all(Ssizes.defaultSpace),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SRoundImage(imageUrl: SImage.banner4, width: double.infinity),
              SizedBox(height: Ssizes.spacebtwSection),
              Column(
                children: [
                  SSectionHeading(title: 'Sports Shirts'),
                  SizedBox(height: Ssizes.spacebtwItem),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) =>
                          SizedBox(width: Ssizes.spacebtwItem),
                      itemCount: 4,
                      shrinkWrap: true,
                      itemBuilder: (_, __) => SPoductCardHorixontal(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
