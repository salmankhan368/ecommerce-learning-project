import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:s_store/utils/constants/colors.dart';
import 'package:s_store/utils/constants/sizes.dart';
import 'package:s_store/utils/device/device_utilty.dart';
import 'package:s_store/utils/helpers/helper_functions.dart';

class SSearchContainer extends StatelessWidget {
  const SSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.onTap,
    required this.padding,
    this.showBorder = true,
    this.showBacground = true,
  });
  final String text;
  final IconData? icon;
  final bool showBorder, showBacground;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Padding(
      padding: padding,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: SDeviceUtils.getScreenWidth(context),
          padding: EdgeInsets.all(Ssizes.ma),
          decoration: BoxDecoration(
            color: showBacground
                ? dark
                      ? SColors.dark
                      : SColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(Ssizes.cardRadiusSa),
            border: showBorder ? Border.all(color: SColors.grey) : null,
          ),

          child: Row(
            children: [
              Icon(Iconsax.search_normal, color: SColors.grey),
              SizedBox(width: Ssizes.spacebtwItem),
              Text(text),
            ],
          ),
        ),
      ),
    );
  }
}
