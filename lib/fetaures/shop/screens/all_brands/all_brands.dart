import 'package:flutter/material.dart';
import 'package:s_store/common/layout/S_grid.layout.dart';
import 'package:s_store/common/widgets/app.bar/app_bar.dart';
import 'package:s_store/common/widgets/brands/sbrand_card.dart';
import 'package:s_store/common/widgets/text/section_heading.dart';
import 'package:s_store/fetaures/shop/screens/all_brands/brands_product.dart';
import 'package:s_store/utils/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(showBackArrow: true, title: Text("Brands")),
      body: Padding(
        padding: EdgeInsets.all(Ssizes.defaultSpace),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SSectionHeading(title: 'Brand', showBackAction: false),
              SizedBox(height: Ssizes.spacebtwItem),
              SGridLayout(
                itemCount: 12,
                mainAxisExtent: 80,
                itemBuilder: (context, index) =>
                    SbrandCard(showBorder: true, onTap: () => BrandsProduct()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
