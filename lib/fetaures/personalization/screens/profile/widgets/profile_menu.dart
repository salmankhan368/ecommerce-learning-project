import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SprofileMenu extends StatelessWidget {
  final IconData icon;
  final String value, title;
  final VoidCallback onPressed;
  const SprofileMenu({
    super.key,
    this.icon = Iconsax.arrow_right_34,

    required this.title,
    required this.value,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(title, style: Theme.of(context).textTheme.bodySmall),
          ),
          Expanded(
            flex: 5,
            child: Text(value, style: Theme.of(context).textTheme.bodyMedium),
          ),
          Expanded(child: Icon(icon)),
        ],
      ),
    );
  }
}
