import 'package:flutter/material.dart';
import 'package:s_store/common/widgets/custom_shape/containers/circuler_container.dart';
import 'package:s_store/utils/constants/colors.dart';

class SChipChoices extends StatelessWidget {
  const SChipChoices({
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
      label: Text(''),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? SColors.white : null),
      avatar: SCirculerContainer(
        width: 50,
        height: 50,
        backgroundColor: Colors.green,
      ),
      shape: CircleBorder(),
      selectedColor: Colors.green,
      backgroundColor: Colors.green,
      padding: EdgeInsets.all(0),
      labelPadding: EdgeInsets.all(0),
    );
  }
}
