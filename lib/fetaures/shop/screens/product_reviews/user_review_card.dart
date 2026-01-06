import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:s_store/common/widgets/custom_shape/containers/rounded_container.dart';
import 'package:s_store/common/widgets/products/rating/rating_bar_indicator.dart';
import 'package:s_store/utils/constants/colors.dart';
import 'package:s_store/utils/constants/image_string.dart';
import 'package:s_store/utils/constants/sizes.dart';
import 'package:s_store/utils/helpers/helper_functions.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(backgroundImage: AssetImage(SImage.user)),
                SizedBox(width: Ssizes.spacebtwItem),
                Text(
                  'Salman Khan',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],
        ),
        SizedBox(height: Ssizes.spacebtwItem),
        //--Reviews
        Row(
          children: [
            SRatingBarIndicator(rating: 4),
            SizedBox(width: Ssizes.spacebtwItem),
            Text('12 Dec,2025', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        SizedBox(height: Ssizes.spacebtwItem),
        ReadMoreText(
          'Fantastic Shoes feature-rich and intuitive! Highly recommend it, as it has simplified my daily routine and has an amazing, user-friendly interface. A truly game-changer.',
          trimCollapsedText: 'Show more',
          trimExpandedText: 'Show less',
          moreStyle: TextStyle(
            fontSize: 12,
            color: SColors.error,
            fontWeight: FontWeight.bold,
          ),
          lessStyle: TextStyle(
            fontSize: 12,
            color: SColors.error,
            fontWeight: FontWeight.bold,
          ),
          trimLength: 1,
          trimMode: TrimMode.Line,
        ),
        SizedBox(height: Ssizes.spacebtwItem),
        SRoundedContainer(
          backgroundColor: dark ? SColors.darkerGrey : SColors.grey,
          child: Padding(
            padding: EdgeInsets.all(Ssizes.ma),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Store Team',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      'Store Team',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                SizedBox(height: Ssizes.spacebtwItem),
                ReadMoreText(
                  "I was initially hesitant about switching, but the onboarding experience was incredibly smooth with clear instructions. The app has a clean and minimalistic design with a well-organized main menu that makes navigation a breeze. I particularly love how the card-style layout on the details page keeps everything elegant and easy to read. One suggestion for the developers: adding a search bar to the main screen would make accessing specific functions even faster, but overall, its a game-changer for my productivity.",
                  trimCollapsedText: 'Show more',
                  trimExpandedText: 'Show less',
                  moreStyle: TextStyle(
                    fontSize: 12,
                    color: SColors.error,
                    fontWeight: FontWeight.bold,
                  ),
                  lessStyle: TextStyle(
                    fontSize: 12,
                    color: SColors.error,
                    fontWeight: FontWeight.bold,
                  ),
                  trimLength: 1,
                  trimMode: TrimMode.Line,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
