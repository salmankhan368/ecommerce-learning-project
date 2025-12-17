import 'package:flutter/material.dart';
import 'package:s_store/utils/constants/image_string.dart';
import 'package:s_store/utils/constants/sizes.dart';
import 'package:s_store/utils/constants/text_strings.dart';

class Login_header extends StatelessWidget {
  const Login_header({super.key, required this.dark});

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(dark ? SImage.whiteAppLogo : SImage.darkAppLogo),
        ),
        Text(
          SText.sLoginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(height: Ssizes.lm),
        Text(
          SText.sLoginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
