import 'package:flutter/material.dart';
import 'package:s_store/common/layout/S_grid.layout.dart';
import 'package:s_store/common/products.cart/cart_menu_icon.dart';
import 'package:s_store/common/widgets/app.bar/app_bar.dart';
import 'package:s_store/common/widgets/app.bar/tabbar.dart';
import 'package:s_store/common/widgets/custom_shape/containers/search_container.dart';
import 'package:s_store/common/widgets/text/sbrand_card.dart';
import 'package:s_store/common/widgets/text/section_heading.dart';
import 'package:s_store/fetaures/shop/screens/home/widget/s_catogries.dart';
import 'package:s_store/utils/constants/colors.dart';
import 'package:s_store/utils/constants/sizes.dart';
import 'package:s_store/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: SAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          actions: [
            SCartCounterIcon(onPressed: () {}, iconColor: SColors.black),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: SHelperFunctions.isDarkMode(context)
                    ? SColors.black
                    : SColors.white,
                pinned: true,
                floating: true,
                automaticallyImplyLeading: false,
                expandedHeight: 400,
                flexibleSpace: Padding(
                  padding: EdgeInsets.all(Ssizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      //search cotainer
                      SizedBox(height: Ssizes.spacebtwItem),
                      SSearchContainer(
                        text: 'Search in Store',
                        padding: EdgeInsets.zero,
                        showBorder: true,
                        showBacground: false,
                      ),
                      SizedBox(height: Ssizes.spacebtwSection),

                      ///---Feature Brand
                      SSectionHeading(
                        title: 'Featured Brands',
                        onPressed: () {},
                      ),
                      SizedBox(height: Ssizes.spacebtwItem / 1.2),
                      SGridLayout(
                        mainAxisExtent: 80,
                        itemCount: 4,
                        itemBuilder: (_, index) {
                          return SbrandCard(onTap: () {}, showBorder: true);
                        },
                      ),
                    ],
                  ),
                ),

                ///--
                bottom: STabbar(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Farniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Cholths')),
                    Tab(child: Text('Cosmatics')),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              SCatogoriesTab(),
              SCatogoriesTab(),
              SCatogoriesTab(),
              SCatogoriesTab(),
              SCatogoriesTab(),
            ],
          ),
        ),
      ),
    );
  }
}
