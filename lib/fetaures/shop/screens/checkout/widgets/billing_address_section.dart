import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:s_store/common/widgets/text/section_heading.dart';
import 'package:s_store/utils/constants/sizes.dart';

class SBillingAddressSection extends StatelessWidget {
  const SBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SSectionHeading(
          title: 'Shipping Address',
          buttonTitle: 'Change',
          showBackAction: true,
        ),
        SizedBox(height: Ssizes.spacebtwItem / 2),
        Text('Code With Salman', style: Theme.of(context).textTheme.bodyLarge),
        SizedBox(height: Ssizes.spacebtwItem),
        Row(
          children: [
            Icon(Iconsax.call, color: Colors.grey, size: 18),
            SizedBox(width: Ssizes.spacebtwItem / 2),
            Text('+923117270309'),
          ],
        ),
        SizedBox(width: Ssizes.spacebtwItem / 2),
        Row(
          children: [
            Icon(Icons.location_history, color: Colors.grey, size: 18),
            SizedBox(width: Ssizes.spacebtwItem / 2),
            Expanded(
              child: Text(
                'Bazkhela,Tehsil Matta Disrict Swat kpk Pak',
                softWrap: true,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
