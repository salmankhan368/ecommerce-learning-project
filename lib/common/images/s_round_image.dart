import 'package:flutter/material.dart';
import 'package:s_store/utils/constants/colors.dart';
import 'package:s_store/utils/constants/sizes.dart';

class SRoundImage extends StatelessWidget {
  const SRoundImage({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
    this.padding,
    this.backgroundColor = SColors.light,
    this.borderRadius = Ssizes.ma,
    this.applyImageRadius = true,
    this.isNetworkImage = false,
    this.onPressed,
    this.fit,
    this.border,
  });
  final double? width, height;
  final String imageUrl;
  final EdgeInsetsGeometry? padding;
  final bool applyImageRadius;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final BoxFit? fit;
  final BoxBorder? border;
  final Color? backgroundColor;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,

        decoration: BoxDecoration(
          border: border,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: Image(
            image: isNetworkImage
                ? NetworkImage(imageUrl)
                : AssetImage(imageUrl) as ImageProvider,
            fit: fit,
          ),
        ),
      ),
    );
  }
}
