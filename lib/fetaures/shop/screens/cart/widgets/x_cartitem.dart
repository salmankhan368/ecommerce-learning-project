import 'package:flutter/material.dart';
import 'package:s_store/common/widgets/text/Sproduct_price.dart';
import 'package:s_store/fetaures/shop/screens/cart/widgets/cart_button.dart';
import 'package:s_store/fetaures/shop/screens/cart/widgets/s_cart_item.dart';
import 'package:s_store/utils/constants/sizes.dart';

class xcartItem extends StatelessWidget {
  final bool showAddRemoveButton;
  const xcartItem({super.key, this.showAddRemoveButton = false});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) => SizedBox(height: Ssizes.spacebtwSection),
      itemCount: 2,
      itemBuilder: (_, index) => Column(
        children: [
          SCartItem(),
          if (showAddRemoveButton) SizedBox(height: Ssizes.spacebtwItem),
          //add and remove item
          if (showAddRemoveButton)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 70),
                    SaddAndRemoveQunatityButton(),
                  ],
                ),
                Sproduct_price(price: '230'),
              ],
            ),
        ],
      ),
    );
  }
}
