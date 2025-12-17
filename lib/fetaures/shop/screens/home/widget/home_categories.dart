import 'package:flutter/material.dart';
import 'package:s_store/common/widgets/image_text.widget/vertical_image_text.dart';
import 'package:s_store/utils/constants/image_string.dart';

class SHomeCategories extends StatelessWidget {
  const SHomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: 6,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return SVerticleImageText(
            title: 'Shoes',
            image: SImage.shoeIcon,
            onTap: () {},
          );
        },
      ),
    );
  }
}
