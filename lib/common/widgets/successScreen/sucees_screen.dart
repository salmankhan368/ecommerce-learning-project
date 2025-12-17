import 'package:flutter/material.dart';
import 'package:s_store/common/style/spacing_style.dart';
import 'package:s_store/utils/constants/sizes.dart';
import 'package:s_store/utils/constants/text_strings.dart';
import 'package:s_store/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subtile,
    required this.onPressed,
  });
  final String image, title, subtile;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///image for suceess
              Image(
                width: SHelperFunctions.screenWidth() * 0.5,
                image: AssetImage(image),
              ),
              SizedBox(height: Ssizes.spacebtwSection),
              //title and subtile
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: Ssizes.spacebtwItem),
              Text(
                subtile,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: Ssizes.spacebtwSection),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed,
                  child: Text(SText.cont),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
