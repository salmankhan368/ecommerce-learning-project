import 'package:flutter/material.dart';
import 'package:s_store/utils/constants/enums.dart';

class Sbrandtitletext extends StatelessWidget {
  const Sbrandtitletext({
    super.key,
    required this.title,
    this.textAlign = TextAlign.center,
    this.maxLines = 1,
    this.brandTextSizes = TextSizes.small,
    this.color,
  });
  final String title;
  final TextAlign? textAlign;
  final int maxLines;
  final TextSizes brandTextSizes;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      //check which brand sizes is required to set that stykle
      style: brandTextSizes == TextSizes.small
          ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
          : brandTextSizes == TextSizes.medium
          ? Theme.of(context).textTheme.bodyMedium!.apply(color: color)
          : brandTextSizes == TextSizes.large
          ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
          : Theme.of(context).textTheme.bodyMedium!.apply(color: color),
    );
  }
}
