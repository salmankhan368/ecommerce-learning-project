import 'package:flutter/material.dart';

import 'package:s_store/utils/constants/colors.dart';
import 'package:s_store/utils/constants/sizes.dart';
import 'package:s_store/utils/helpers/helper_functions.dart';

class SVerticleImageText extends StatelessWidget {
  const SVerticleImageText({
    super.key,
    required this.title,
    required this.image,
    this.textColor = SColors.white,
    this.backgroundColor,
    this.onTap,
  });
  final String title, image;
  final Color textColor;
  final Color? backgroundColor;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: Ssizes.spacebtwItem),
        child: Column(
          children: [
            ///circuler icon
            Container(
              height: 56,
              width: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: (dark ? SColors.light : SColors.dark),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: SColors.dark,
                ),
              ),
            ),

            ///Text
            Text(
              title,
              style: Theme.of(
                context,
              ).textTheme.labelMedium!.apply(color: textColor),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
