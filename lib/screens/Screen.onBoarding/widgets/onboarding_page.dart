import 'package:flutter/material.dart';
import 'package:s_store/utils/constants/sizes.dart';
import 'package:s_store/utils/helpers/helper_functions.dart';

class onBoardingPage extends StatelessWidget {
  const onBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });
  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Ssizes.defaultSpace),
      child: Column(
        children: [
          Image(
            width: SHelperFunctions.screenWidth() * 0.7,
            height: SHelperFunctions.screenHeight() * 0.7,
            image: AssetImage(image),
          ),
          Text(
            // SText.onBoardingTitle1,
            title,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: Ssizes.spacebtwItem),
          Text(
            // SText.onBoardingSubTitle1,
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
