import 'package:flutter/material.dart';
import 'package:s_store/common/layout/S_grid.layout.dart';
import 'package:s_store/common/widgets/custom_shape/containers/primary_header_container.dart';
import 'package:s_store/common/widgets/custom_shape/containers/search_container.dart';
import 'package:s_store/common/widgets/products/products_cards/product_card_verticle.dart';
import 'package:s_store/common/widgets/text/section_heading.dart';
import 'package:s_store/fetaures/shop/screens/home/widget/home_appBar.dart';
import 'package:s_store/fetaures/shop/screens/home/widget/home_categories.dart';
import 'package:s_store/fetaures/shop/screens/home/widget/promo_slider.dart';
import 'package:s_store/utils/constants/image_string.dart';
import 'package:s_store/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SPrimaryHeaderContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///Home App bar
                  SHomeAppBar(),
                  //Serach Bar
                  SizedBox(height: Ssizes.spacebtwSection),
                  //Search Container
                  SSearchContainer(
                    text: 'Search in store',
                    padding: EdgeInsets.all(0),
                  ),
                  SizedBox(height: Ssizes.spacebtwSection),
                  Padding(
                    padding: EdgeInsets.only(left: Ssizes.defaultSpace),
                    child: Column(
                      children: [
                        //Section headingb
                        SSectionHeading(
                          title: 'Populer Catogories',
                          showBackAction: false,
                        ),
                        SizedBox(height: Ssizes.spacebtwItem),

                        ///Home categories
                        SHomeCategories(),
                        SizedBox(height: Ssizes.spacebtwSection),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //Banner image Promo Slider
            Padding(
              padding: EdgeInsets.all(Ssizes.defaultSpace),
              child: Column(
                children: [
                  promoSlider(
                    banners: [
                      SImage.promoBanner1,
                      SImage.promoBanner2,
                      SImage.promoBanner3,
                    ],
                  ),

                  SizedBox(height: Ssizes.spacebtwSection),
                  SSectionHeading(title: 'Populer products', onPressed: () {}),
                  SizedBox(height: Ssizes.spacebtwItem),
                  //populerProducts
                  SGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => SProductCardVerticle(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
