import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:s_store/common/Icon/s_circuler_icon.dart';
import 'package:s_store/utils/constants/colors.dart';
import 'package:s_store/utils/constants/sizes.dart';
import 'package:s_store/utils/helpers/helper_functions.dart';

class SaddAndRemoveQunatityButton extends StatelessWidget {
  const SaddAndRemoveQunatityButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SCirculerIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          backgroundColor: SHelperFunctions.isDarkMode(context)
              ? SColors.darkerGrey
              : SColors.light,
          color: SHelperFunctions.isDarkMode(context)
              ? SColors.light
              : SColors.black,
        ),
        SizedBox(width: Ssizes.spacebtwItem),
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        SizedBox(width: Ssizes.spacebtwItem),
        SCirculerIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          backgroundColor: SColors.primary,
          color: SHelperFunctions.isDarkMode(context)
              ? SColors.light
              : SColors.black,
        ),
      ],
    );
  }
}
