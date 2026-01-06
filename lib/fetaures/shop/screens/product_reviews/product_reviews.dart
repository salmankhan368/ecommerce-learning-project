import 'package:flutter/material.dart';
import 'package:s_store/common/widgets/app.bar/app_bar.dart';
import 'package:s_store/common/widgets/products/rating/rating_bar_indicator.dart';
import 'package:s_store/fetaures/shop/screens/product_reviews/rating_progress_indicator.dart';
import 'package:s_store/fetaures/shop/screens/product_reviews/user_review_card.dart';
import 'package:s_store/utils/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(title: Text('Reviews & Rating'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Ssizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Rating and reviews are verified and are from people who use the same type of devices that you use',
              ),
              SizedBox(height: Ssizes.spacebtwItem),
              //overall product rating
              //Rating
              RatingprogresIndicator(),
              //Rating Bar
              SRatingBarIndicator(rating: 4.5),
              Text('12.676', style: Theme.of(context).textTheme.bodySmall),
              SizedBox(height: Ssizes.spacebtwSection),
              UserReviewCard(),
              UserReviewCard(), UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
