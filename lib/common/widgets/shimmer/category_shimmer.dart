import 'package:flutter/material.dart';
import 'package:s_store/common/widgets/shimmer/shimmer.dart';
import 'package:s_store/utils/constants/sizes.dart';

class CategoryShimmer extends StatelessWidget {
  const CategoryShimmer({super.key, this.itemCount = 6});
  final int itemCount;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: itemCount,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      separatorBuilder: (_, __) => SizedBox(width: Ssizes.spacebtwItem),
      itemBuilder: (_, __) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //for image
            Sshimmer(width: 55, height: 55, radius: 55),
            SizedBox(height: Ssizes.spacebtwItem / 2),
            //for text
            Sshimmer(width: 55, height: 8),
          ],
        );
      },
    );
  }
}
