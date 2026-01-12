import 'package:flutter/material.dart';
import 'package:s_store/common/widgets/custom_shape/containers/rounded_container.dart';
import 'package:s_store/common/widgets/brands/sbrand_card.dart';
import 'package:s_store/utils/constants/colors.dart';
import 'package:s_store/utils/constants/sizes.dart';
import 'package:s_store/utils/helpers/helper_functions.dart';

class SBrandShowCase extends StatelessWidget {
  const SBrandShowCase({super.key, required this.images});
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return SRoundedContainer(
      shadowBorder: true,
      borderColor: SColors.darkerGrey,
      backgroundColor: Colors.transparent,
      padding: EdgeInsets.all(Ssizes.lm),
      margin: EdgeInsets.only(bottom: Ssizes.spacebtwItem),
      child: Column(
        children: [
          //Brand with card
          SbrandCard(showBorder: false),
          //  product images
          Row(
            children: [
              ...images.map(
                (image) => brandTopProductImageWidget(image, context),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget(String image, context) {
  return Expanded(
    child: SRoundedContainer(
      height: 80,
      backgroundColor: SHelperFunctions.isDarkMode(context)
          ? SColors.darkerGrey
          : SColors.light,
      margin: EdgeInsets.only(right: Ssizes.lm),
      padding: EdgeInsets.all(Ssizes.sa),
      child: Image(image: AssetImage(image), fit: BoxFit.contain),
    ),
  );
}
