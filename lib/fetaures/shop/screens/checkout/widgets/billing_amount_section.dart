import 'package:flutter/material.dart';
import 'package:s_store/utils/constants/sizes.dart';

class SBillingAmountSection extends StatelessWidget {
  const SBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shiping Fee', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$8.00', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        SizedBox(height: Ssizes.spacebtwItem / 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax Fee', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$3.00', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        SizedBox(height: Ssizes.spacebtwItem / 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$11.00', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      ],
    );
  }
}
