import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:s_store/utils/constants/colors.dart';

class SRatingBarIndicator extends StatelessWidget {
  final double rating;
  const SRatingBarIndicator({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      itemBuilder: (_, __) => Icon(Iconsax.star1),
      unratedColor: SColors.grey,
      rating: rating,
      itemSize: 20,
    );
  }
}
