import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s_store/fetaures/authentication/controllers.onboarding/signUp/sign_up_controller%20.dart';
import 'package:s_store/utils/constants/colors.dart';
import 'package:s_store/utils/constants/sizes.dart';
import 'package:s_store/utils/constants/text_strings.dart';
import 'package:s_store/utils/helpers/helper_functions.dart';

class STermsAndConditionsCheckbox extends StatelessWidget {
  const STermsAndConditionsCheckbox({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = SignUpController.instance;
    final dark = SHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Obx(
            () => Checkbox(
              value: controller.privacyPolicy.value,
              onChanged: (value) =>
                  controller.privacyPolicy.value = value ?? false,
            ),
          ),
        ),
        SizedBox(width: Ssizes.spacebtwItem / 3),
        Flexible(
          child: Text.rich(
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
        ),
      ],
    );
  }
}
