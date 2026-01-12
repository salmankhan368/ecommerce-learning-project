import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s_store/common/widgets/app.bar/app_bar.dart';
import 'package:s_store/fetaures/shop/screens/cart/widgets/x_cartitem.dart';
import 'package:s_store/fetaures/shop/screens/checkout/check_out.dart';
import 'package:s_store/utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(
        title: Center(child: Text('Welcome To Cart')),
        showBackArrow: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(Ssizes.defaultSpace),
        child: xcartItem(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(Ssizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => CheckOutScreen()),
          child: Text('Checkout \$232.00/-'),
        ),
      ),
    );
  }
}
