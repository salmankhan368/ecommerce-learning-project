import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:s_store/common/widgets/custom_shape/containers/circuler_container.dart';
import 'package:s_store/utils/helpers/helper_functions.dart';

class SChoiceChip extends StatelessWidget {
  /// Create a chip that acts like a radio button.
  /// The label, selected, autofocus, and clipBehavior arguments must not be null.
  /// The pressElevation and elevation must be null or non-negative.
  /// Typically, pressElevation is greater than elevation.
  const SChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;

  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      // Use this function to get Colors as a Chip
      avatar: SHelperFunctions.getColor(text) != null
          ? SCirculerContainer(
              width: 50,
              height: 50,
              backgroundColor: SHelperFunctions.getColor(text)!,
              child: Icon(Iconsax.check, color: Colors.white),
            )
          : null,

      label: SHelperFunctions.getColor(text) == null ? Text(text) : SizedBox(),
      selected: selected,
      onSelected: onSelected,
      labelPadding: SHelperFunctions.getColor(text) != null
          ? const EdgeInsets.all(0)
          : null,
      padding: SHelperFunctions.getColor(text) != null
          ? const EdgeInsets.all(0)
          : null,
      shape: SHelperFunctions.getColor(text) != null
          ? const CircleBorder()
          : null,
      backgroundColor: Colors.transparent,
      labelStyle: TextStyle(color: selected ? Colors.white : null),
    );
  }
}
