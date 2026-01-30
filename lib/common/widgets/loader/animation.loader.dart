import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:s_store/utils/constants/sizes.dart';

class SAnimationLoaderWidget extends StatelessWidget {
  final String text;
  final String? actionText;
  final String animation;
  final VoidCallback? onActionPressed;
  final bool showAction;
  const SAnimationLoaderWidget({
    super.key,
    required this.text,
    required this.animation,
    this.onActionPressed,
    this.showAction = false,
    this.actionText,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Lottie.asset(
            animation,
            width: MediaQuery.of(context).size.width * 0.8,
          ),
          SizedBox(height: Ssizes.defaultSpace),
          showAction
              ? SizedBox(
                  width: 200,
                  child: OutlinedButton(
                    onPressed: onActionPressed,
                    child: Text(
                      actionText!,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
