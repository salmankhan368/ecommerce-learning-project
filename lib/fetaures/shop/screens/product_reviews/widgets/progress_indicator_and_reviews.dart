import 'package:flutter/material.dart';
import 'package:s_store/utils/constants/colors.dart';
import 'package:s_store/utils/device/device_utilty.dart';

class SProgressIndicatorAndReviews extends StatelessWidget {
  final String text;
  final double value;
  const SProgressIndicatorAndReviews({
    super.key,
    required this.text,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(text, style: Theme.of(context).textTheme.bodyMedium),
        ),
        Expanded(
          flex: 11,
          child: SizedBox(
            width: SDeviceUtils.getScreenWidth(context) * 0.8,
            child: LinearProgressIndicator(
              backgroundColor: SColors.grey,
              borderRadius: BorderRadius.circular(17),
              value: value,
              // valueColor: AlwaysStoppedAnimation(SColors.primary),
              minHeight: 12,
            ),
          ),
        ),
      ],
    );
  }
}
