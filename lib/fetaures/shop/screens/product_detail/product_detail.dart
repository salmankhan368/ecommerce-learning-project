import 'package:flutter/material.dart';
import 'package:s_store/fetaures/shop/screens/product_detail/product_attributes.dart';
import 'package:s_store/fetaures/shop/screens/product_detail/product_meta_data.dart';
import 'package:s_store/fetaures/shop/screens/product_detail/rating_share_detail.dart';
import 'package:s_store/fetaures/shop/screens/product_detail/widgets/product.detail.image.silder.dart';
import 'package:s_store/utils/constants/sizes.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Product image slider
            SProductImageSlider(),

            ///Product detail
            Padding(
              padding: EdgeInsets.only(
                left: Ssizes.defaultSpace,
                right: Ssizes.defaultSpace,
                bottom: Ssizes.defaultSpace,
              ),
              child: Column(
                children: [
                  SRatingAndShare(),
                  // SizedBox(height: Ssizes.spacebtwSection),
                  SProductMetaData(),

                  //Attributes
                  SProductAttributes(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
