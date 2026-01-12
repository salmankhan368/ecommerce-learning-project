import 'package:flutter/material.dart';
import 'package:s_store/common/widgets/app.bar/app_bar.dart';
import 'package:s_store/common/widgets/products/sortable/sortable.dart';
import 'package:s_store/utils/constants/sizes.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(showBackArrow: true, title: Text('Popular Products')),
      body: Padding(
        padding: EdgeInsets.all(Ssizes.defaultSpace),
        child: SingleChildScrollView(child: SsortableProducts()),
      ),
    );
  }
}
