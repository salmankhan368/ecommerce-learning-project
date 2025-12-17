import 'package:flutter/material.dart';
import 'package:s_store/common/Icon/s_circuler_icon.dart';
import 'package:s_store/common/images/s_round_image.dart';
import 'package:s_store/common/widgets/app.bar/app_bar.dart';
import 'package:s_store/common/widgets/custom_shape/curved_edge/curved_edges_widget.dart';
import 'package:s_store/utils/constants/colors.dart';
import 'package:s_store/utils/constants/image_string.dart';
import 'package:s_store/utils/constants/sizes.dart';
import 'package:s_store/utils/helpers/helper_functions.dart';

class SProductImageSlider extends StatelessWidget {
  const SProductImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return SCurvedEdgeWidget(
      child: Container(
        color: dark ? SColors.darkGrey : SColors.light,
        child: Stack(
          children: [
            SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(Ssizes.productImageRadius * 2),
                child: Center(
                  child: Image(image: AssetImage(SImage.productImage5)),
                ),
              ),
            ),
            Positioned(
              left: Ssizes.defaultSpace,
              right: 0,
              bottom: 30,

              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  physics: AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (_, __) =>
                      SizedBox(width: Ssizes.spacebtwItem),
                  itemCount: 6,
                  itemBuilder: (_, index) => SRoundImage(
                    width: 80,
                    imageUrl: SImage.productImage68,
                    backgroundColor: dark ? SColors.dark : SColors.white,
                    border: Border.all(color: SColors.primary),
                    padding: EdgeInsets.all(Ssizes.sa),
                  ),
                ),
              ),
            ),
            //SAPp bar
            SAppBar(
              showBackArrow: true,
              actions: [
                SCirculerIcon(icon: Icons.favorite, color: SColors.error),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
