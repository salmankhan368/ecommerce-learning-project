import 'package:flutter/material.dart';
import 'package:s_store/utils/constants/colors.dart';
import 'package:s_store/utils/constants/sizes.dart';
import 'package:s_store/utils/constants/text_strings.dart';
import 'package:s_store/utils/helpers/helper_functions.dart';

class STermsAndConditionsCheckbox extends StatelessWidget {
  const STermsAndConditionsCheckbox({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 0,
          height: 0,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        SizedBox(width: Ssizes.spacebtwItem),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '${SText.iAgreeeto} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: SText.privacyPolicy,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? SColors.white : SColors.primary,
                  decoration: TextDecoration.underline,
                ),
              ),
              TextSpan(
                text: ' ${SText.and} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: ' ${SText.termofuse}',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  decorationColor: dark ? SColors.white : SColors.primary,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
