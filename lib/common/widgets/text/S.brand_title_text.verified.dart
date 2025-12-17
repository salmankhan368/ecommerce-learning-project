import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:s_store/common/widgets/text/s.brand.title.text.dart';
import 'package:s_store/utils/constants/colors.dart';
import 'package:s_store/utils/constants/enums.dart';
import 'package:s_store/utils/constants/sizes.dart';

class SBrandTitleTextWithVerifiedIcon extends StatelessWidget {
  const SBrandTitleTextWithVerifiedIcon({
    super.key,

    required this.title,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
    this.textColor,
    this.iconColor = SColors.primary,
  });
  final Color? textColor, iconColor;
  final String title;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: Sbrandtitletext(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSizes: brandTextSize,
          ),
        ),
        // Text(
        //   title,textAlign: textAlign,overflow: TextOverflow.ellipsis,
        //   style: Theme.of(context).textTheme.bodyMedium,
        //   maxLines: 1,
        // ),
        SizedBox(width: Ssizes.sa),
        Icon(Iconsax.verify5, color: SColors.primary, size: Ssizes.ma),
      ],
    );
  }
}
