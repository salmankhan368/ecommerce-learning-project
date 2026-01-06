import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:s_store/common/Icon/s_circuler_icon.dart';
import 'package:s_store/utils/constants/colors.dart';
import 'package:s_store/utils/constants/sizes.dart';
import 'package:s_store/utils/helpers/helper_functions.dart';

class SbotomAddtoCart extends StatelessWidget {
  const SbotomAddtoCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Ssizes.defaultSpace,
        vertical: Ssizes.defaultSpace,
      ),
      decoration: BoxDecoration(
        color: dark ? SColors.darkGrey : SColors.lightGrey,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(Ssizes.cardRadiusAn),
          topRight: Radius.circular(Ssizes.cardRadiusAn),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SCirculerIcon(
                icon: Iconsax.minus,
                backgroundColor: SColors.darkGrey,
                color: SColors.white,
                width: 40,
                height: 40,
              ),
              SizedBox(width: Ssizes.spacebtwItem),
              Text('2', style: Theme.of(context).textTheme.titleMedium),
              SizedBox(width: Ssizes.spacebtwItem),
              SCirculerIcon(
                icon: Iconsax.add,
                backgroundColor: SColors.black,
                color: SColors.white,
                width: 40,
                height: 40,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(Ssizes.ma),
              backgroundColor: SColors.black,
              side: BorderSide(color: SColors.black),
            ),

            child: Text('Add to Cart'),
          ),
        ],
      ),
    );
  }
}
