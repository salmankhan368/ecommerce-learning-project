import 'package:flutter/material.dart';
import 'package:s_store/utils/constants/colors.dart';

class SSectionHeading extends StatelessWidget {
  const SSectionHeading({
    super.key,
    required this.title,
    this.buttonTitle = 'View all',
    this.showBackAction = true,
    this.onPressed,
  });
  final String title, buttonTitle;
  final bool showBackAction;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(
            context,
          ).textTheme.headlineMedium!.apply(color: SColors.black),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showBackAction)
          TextButton(onPressed: onPressed, child: Text(buttonTitle)),
      ],
    );
  }
}
