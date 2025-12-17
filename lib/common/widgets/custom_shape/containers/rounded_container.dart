import 'package:flutter/material.dart';
import 'package:s_store/utils/constants/colors.dart';
import 'package:s_store/utils/constants/sizes.dart';

class SRoundedContainer extends StatelessWidget {
  const SRoundedContainer({
    super.key,
    this.width,
    this.height,
    this.radius = Ssizes.cardRadiusSa,
    this.child,
    this.shadowBorder = false,
    this.borderColor = SColors.primary,
    this.backgroundColor = SColors.white,
    this.padding,
    this.margin,
  });
  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool shadowBorder;
  final Color borderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: shadowBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
