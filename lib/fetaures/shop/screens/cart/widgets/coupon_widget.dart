import 'package:flutter/material.dart';
import 'package:s_store/common/widgets/custom_shape/containers/rounded_container.dart';
import 'package:s_store/utils/constants/colors.dart';
import 'package:s_store/utils/constants/sizes.dart';
import 'package:s_store/utils/helpers/helper_functions.dart';

class CoupanCode extends StatelessWidget {
  const CoupanCode({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return SRoundedContainer(
      backgroundColor: dark ? SColors.dark : SColors.light,
      padding: EdgeInsets.only(
        top: Ssizes.sa,
        bottom: Ssizes.sa,
        right: Ssizes.sa,
        left: Ssizes.sa,
      ),
      shadowBorder: true,
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Hava a promo code? Enter here',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                side: BorderSide(color: SColors.grey.withOpacity(0.1)),
                foregroundColor: dark
                    ? SColors.white.withOpacity(0.2)
                    : SColors.dark.withOpacity(0.5),
                backgroundColor: SColors.grey.withOpacity(0.3),
              ),
              child: SizedBox(width: 70, child: Center(child: Text('Apply'))),
            ),
          ),
        ],
      ),
    );
  }
}
