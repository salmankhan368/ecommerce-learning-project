import 'package:flutter/material.dart';
import 'package:s_store/utils/constants/colors.dart';
import 'package:s_store/utils/helpers/helper_functions.dart';
import 'package:shimmer/shimmer.dart';

class Sshimmer extends StatelessWidget {
  final Color? color;
  final double width, height, radius;
  const Sshimmer({
    super.key,
    this.color,
    required this.width,
    required this.height,
    this.radius = 33,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Shimmer.fromColors(
      baseColor: dark ? Colors.grey[500]! : Colors.grey[300]!,
      highlightColor: dark ? Colors.grey[700]! : Colors.grey[100]!,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color ?? (dark ? SColors.darkerGrey : SColors.white),
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}
