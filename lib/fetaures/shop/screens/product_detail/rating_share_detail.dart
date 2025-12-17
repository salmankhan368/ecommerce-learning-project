import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:s_store/utils/constants/sizes.dart';

class SRatingAndShare extends StatelessWidget {
  const SRatingAndShare({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Iconsax.star5, color: Colors.amber, size: 24),
            SizedBox(width: Ssizes.spacebtwItem / 2),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '5',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  TextSpan(text: '(199)'),
                ],
              ),
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.share, size: Ssizes.ma),
        ),
      ],
    );
  }
}
