import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:s_store/common/widgets/shimmer/shimmer.dart';
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
    this.width = 80,
    this.height = 80,
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
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: isNetworkImage
            ? CachedNetworkImage(
                imageUrl: image,
                fit: boxfit,
                color: overlayColor,
                progressIndicatorBuilder: (context, url, progress) =>
                    Sshimmer(width: 55, height: 55, radius: 55),
                errorWidget: (context, url, error) => Icon(Icons.error),
              )
            : Image(image: AssetImage(image), fit: boxfit, color: overlayColor),
      ),
    );
  }
}
