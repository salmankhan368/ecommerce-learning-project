import 'package:flutter/material.dart';
import 'package:s_store/fetaures/shop/screens/product_reviews/widgets/progress_indicator_and_reviews.dart';

class RatingprogresIndicator extends StatelessWidget {
  const RatingprogresIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text('4.8', style: Theme.of(context).textTheme.displayLarge),
        ),
        Expanded(
          flex: 7,
          child: Column(
            children: [
              SProgressIndicatorAndReviews(text: '5', value: 1),
              SProgressIndicatorAndReviews(text: '4', value: 0.7),
              SProgressIndicatorAndReviews(text: '3', value: 0.6),
              SProgressIndicatorAndReviews(text: '2', value: 0.4),
              SProgressIndicatorAndReviews(text: '1', value: 0.2),
            ],
          ),
        ),
      ],
    );
  }
}
