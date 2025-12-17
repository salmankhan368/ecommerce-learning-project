import 'package:flutter/material.dart';
import 'package:s_store/utils/constants/colors.dart';
import 'package:s_store/utils/constants/sizes.dart';
import 'package:s_store/utils/helpers/helper_functions.dart';

class SCirculerIcon extends StatelessWidget {
  const SCirculerIcon({
    super.key,
    this.width,
    this.height,
    this.size = Ssizes.ma,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });
  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor != null
            ? backgroundColor!
            : SHelperFunctions.isDarkMode(context)
            ? SColors.black.withOpacity(0.9)
            : SColors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        onPressed: () {},

        icon: Icon(icon, color: color, size: size),
      ),
    );
  }
}
