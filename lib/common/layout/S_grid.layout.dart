import 'package:flutter/material.dart';
import 'package:s_store/utils/constants/sizes.dart';

class SGridLayout extends StatelessWidget {
  const SGridLayout({
    super.key,
    this.mainAxisExtent = 300,
    required this.itemCount,
    required this.itemBuilder,
  });
  final double? mainAxisExtent;
  final int itemCount;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      itemCount: itemCount,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: mainAxisExtent,
        crossAxisSpacing: Ssizes.gridViewSpacing,
        mainAxisSpacing: Ssizes.gridViewSpacing,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
