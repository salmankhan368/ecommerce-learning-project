import 'package:flutter/material.dart';
import 'package:s_store/common/images/s.circuler.image.dart';
import 'package:s_store/common/widgets/custom_shape/containers/rounded_container.dart';
import 'package:s_store/common/widgets/text/S.brand_title_text.verified.dart';
import 'package:s_store/utils/constants/colors.dart';
import 'package:s_store/utils/constants/enums.dart';
import 'package:s_store/utils/constants/image_string.dart';
import 'package:s_store/utils/constants/sizes.dart';
import 'package:s_store/utils/helpers/helper_functions.dart';

class SbrandCard extends StatelessWidget {
  const SbrandCard({super.key, required this.showBorder, this.onTap});
  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SRoundedContainer(
        height: 100,
        padding: EdgeInsets.all(Ssizes.sa),
        shadowBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Circuler image
            Flexible(
              child: SCirculerImage(
                image: SImage.clothIcon,
                isNetworkImage: false,
                overlayColor: SHelperFunctions.isDarkMode(context)
                    ? SColors.white
                    : SColors.dark,
                backgroundColor: Colors.transparent,
              ),
            ),
            SizedBox(height: Ssizes.spacebtwItem / 2),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SBrandTitleTextWithVerifiedIcon(
                    title: 'Nike',
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    '256 Products ',
                    style: Theme.of(context).textTheme.labelMedium,
                    overflow: TextOverflow.ellipsis,
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
