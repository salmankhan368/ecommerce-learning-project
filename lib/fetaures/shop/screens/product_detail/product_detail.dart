import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:s_store/common/widgets/text/section_heading.dart';
import 'package:s_store/fetaures/shop/screens/product_detail/product_attributes.dart';
import 'package:s_store/fetaures/shop/screens/product_detail/product_meta_data.dart';
import 'package:s_store/fetaures/shop/screens/product_detail/rating_share_detail.dart';
import 'package:s_store/fetaures/shop/screens/product_detail/widgets/product.detail.image.silder.dart';
import 'package:s_store/utils/constants/colors.dart';
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
                  SizedBox(height: Ssizes.spacebtwSection),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Checkout'),
                    ),
                  ),
                  SizedBox(height: Ssizes.spacebtwSection),
                  SSectionHeading(title: 'Description', showBackAction: false),
                  SizedBox(height: Ssizes.spacebtwItem),
                  ReadMoreText(
                    'Nike shoes are performance-driven footwear known for innovation like Nike Air cushioning and sustainable materials, featuring diverse styles from lightweight runners with Zoom Air/ReactX foam for energy return to classic leather lifestyle sneakers like Air Force 1, all designed for athlete comfort, support, and iconic style with the Swoosh logo. ',
                    trimLines: 2,
                    trimCollapsedText: 'Show More',

                    trimMode: TrimMode.Line,
                    trimExpandedText: 'Less show',
                    lessStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: SColors.error,
                    ),
                    moreStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w800,
                      color: SColors.error,
                    ),
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
