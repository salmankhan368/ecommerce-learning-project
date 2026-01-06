import 'package:flutter/material.dart';
import 'package:s_store/common/widgets/app.bar/app_bar.dart';
import 'package:s_store/fetaures/shop/screens/order/widgets/s.order.list.dart';
import 'package:s_store/utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(
        title: Text(
          'My Order',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(Ssizes.defaultSpace),
        child: SOrderList(),
      ),
    );
  }
}
