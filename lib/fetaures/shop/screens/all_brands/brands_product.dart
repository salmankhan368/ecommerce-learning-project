import 'package:flutter/material.dart';
import 'package:s_store/common/widgets/app.bar/app_bar.dart';
import 'package:s_store/common/widgets/brands/sbrand_card.dart';
import 'package:s_store/utils/constants/sizes.dart';

class BrandsProduct extends StatelessWidget {
  const BrandsProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(title: Text("Nike")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(Ssizes.defaultSpace),
        child: Column(
          children: [
            SbrandCard(showBorder: true),
            SizedBox(height: Ssizes.spacebtwItem),
          ],
        ),
      ),
    );
  }
}
