import 'package:flutter/material.dart';
import 'package:s_store/utils/constants/colors.dart';

class SCirculerContainer extends StatelessWidget {
  const SCirculerContainer({
    super.key,
    this.width = 380,
    this.height = 380,
    this.radius = 380,
    this.padding = 0,
    this.backgroundColor = SColors.white,
    this.child,
    this.margin,
  });
  final double width;
  final double height;
  final double radius;
  final double padding;
  final Color backgroundColor;
  final Widget? child;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(padding),

      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(320),
      ),
    );
  }
}
