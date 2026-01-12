import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:s_store/common/layout/S_grid.layout.dart';
import 'package:s_store/common/widgets/products/products_cards/product_card_verticle.dart';
import 'package:s_store/utils/constants/sizes.dart';

class SsortableProducts extends StatelessWidget {
  const SsortableProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField(
          borderRadius: BorderRadius.circular(18),
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.sort),
            border: OutlineInputBorder(),
          ),
          items:
              [
                    'Name',
                    'Higher Price',
                    'Lower Price',
                    'Sale',
                    'Newest',
                    'Populerity',
                  ]
                  .map(
                    (option) =>
                        DropdownMenuItem(value: option, child: Text(option)),
                  )
                  .toList(),
          onChanged: (value) {},
        ),
        SizedBox(height: Ssizes.spacebtwSection),
        SGridLayout(
          itemCount: 8,
          itemBuilder: (context, index) => SProductCardVerticle(),
        ),
      ],
    );
  }
}
