import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s_store/common/widgets/image_text.widget/vertical_image_text.dart';
import 'package:s_store/common/widgets/shimmer/category_shimmer.dart';
import 'package:s_store/fetaures/shop/controller/category_controller.dart';
import 'package:s_store/fetaures/shop/screens/sub_catogories/sub_categories.dart';
import 'package:s_store/utils/constants/colors.dart';

class SHomeCategories extends StatelessWidget {
  const SHomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    final categoryController = Get.put(CategoryController());
    return Obx(() {
      if (categoryController.isLoading.value) return CategoryShimmer();
      if (categoryController.featuredCategories.isEmpty) {
        return Text(
          "No Data found",
          style: Theme.of(
            context,
          ).textTheme.bodyMedium!.apply(color: SColors.white),
        );
      }
      return SizedBox(
        height: 80,
        child: ListView.builder(
          itemCount: categoryController.featuredCategories.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final category = categoryController.featuredCategories[index];
            return SVerticleImageText(
              title: category.name,
              image: category.image,
              onTap: () => Get.to(() => SubCategoriesScreen()),
            );
          },
        ),
      );
    });
  }
}
