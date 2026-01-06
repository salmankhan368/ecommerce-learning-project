import 'package:flutter/material.dart';
import 'package:s_store/common/widgets/custom_shape/containers/rounded_container.dart';
import 'package:s_store/common/widgets/text/section_heading.dart';
import 'package:s_store/utils/constants/colors.dart';
import 'package:s_store/utils/constants/image_string.dart';
import 'package:s_store/utils/constants/sizes.dart';
import 'package:s_store/utils/helpers/helper_functions.dart';

class SBillingPaymentSection extends StatelessWidget {
  const SBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        SSectionHeading(
          title: 'Payment Method',
          showBackAction: true,
          onPressed: () {},
          buttonTitle: 'Change',
        ),
        Row(
          children: [
            SRoundedContainer(
              width: 60,
              padding: EdgeInsets.all(Ssizes.sa),
              height: 60,
              backgroundColor: dark ? SColors.light : SColors.white,
              child: Image.asset(
                SImage.payPalicon,
                height: 64,
                width: 64,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: Ssizes.spacebtwItem / 2),
            Text('Paypal', style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ],
    );
  }
}
