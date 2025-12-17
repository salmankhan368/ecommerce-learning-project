import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:s_store/utils/constants/colors.dart';

class SCartCounterIcon extends StatelessWidget {
  const SCartCounterIcon({super.key, this.iconColor, required this.onPressed});
  final Color? iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(Iconsax.shopping_bag, color: SColors.black),
        ),
        Positioned(
          right: 0,
          child: Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
              color: SColors.black,
              borderRadius: BorderRadius.circular(80),
            ),
            child: Center(
              child: Text(
                '5',
                style: Theme.of(context).textTheme.labelLarge!.apply(
                  fontSizeFactor: 0.8,
                  color: SColors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
