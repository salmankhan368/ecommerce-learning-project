import 'package:flutter/material.dart';
import 'package:s_store/utils/constants/colors.dart';

import 'package:s_store/utils/constants/sizes.dart';
import 'package:s_store/utils/helpers/helper_functions.dart';

class SCirculerImage extends StatelessWidget {
  const SCirculerImage({
    super.key,
    this.boxfit = BoxFit.cover,
    required this.image,
    this.isNetworkImage = false,
    this.overlayColor,
    this.backgroundColor,
    this.width = 56,
    this.height = 56,
    this.padding = Ssizes.sa,
  });
  final BoxFit? boxfit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: SHelperFunctions.isDarkMode(context)
            ? SColors.black
            : SColors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        image: isNetworkImage
            ? NetworkImage(image)
            : AssetImage(image) as ImageProvider,
        color: overlayColor,
      ),
    );
  }
}
