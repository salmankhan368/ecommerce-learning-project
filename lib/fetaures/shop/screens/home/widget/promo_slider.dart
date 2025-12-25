import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s_store/common/images/s_round_image.dart';
import 'package:s_store/common/widgets/custom_shape/containers/circuler_container.dart';
import 'package:s_store/fetaures/shop/controller/homeController/home_controller.dart';
import 'package:s_store/utils/constants/colors.dart';
import 'package:s_store/utils/constants/sizes.dart';

class promoSlider extends StatelessWidget {
  const promoSlider({super.key, required this.banners});
  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(Ssizes.defaultSpace),
          child: CarouselSlider(
            items: banners.map((url) => SRoundImage(imageUrl: url)).toList(),
            options: CarouselOptions(
              viewportFraction: 0.8,
              onPageChanged: (index, _) =>
                  controller.updatePageindiactor(index),
            ),
          ),
        ),
        SizedBox(height: Ssizes.spacebtwItem),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < 3; i++)
                  SCirculerContainer(
                    width: 20,
                    height: 8,
                    margin: EdgeInsets.only(right: 5),
                    backgroundColor: controller.carousalCurrentIndex.value == i
                        ? SColors.primary
                        : SColors.grey,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
