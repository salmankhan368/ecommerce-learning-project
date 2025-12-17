import 'package:flutter/material.dart';

class Sproduct_price extends StatelessWidget {
  const Sproduct_price({
    super.key,
    required this.price,
    this.currencsign = '\$',
    this.maxLines = 1,
    this.lineThrough = false,
    this.isLarge = false,
  });
  final String price, currencsign;
  final int maxLines;
  final bool lineThrough;
  final bool isLarge;

  @override
  Widget build(BuildContext context) {
    return Text(
      currencsign + price,
      style: isLarge
          ? Theme.of(context).textTheme.headlineMedium!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null,
            )
          : Theme.of(context).textTheme.titleLarge!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null,
            ),
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
    );
  }
}
