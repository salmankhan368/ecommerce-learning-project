import 'package:flutter/material.dart';
import 'package:s_store/utils/constants/colors.dart';

class SChipTheme {
  SChipTheme._();
  /*--Chip Theme for light  --*/
  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle: TextStyle(color: Colors.black),
    selectedColor: SColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    checkmarkColor: SColors.white,
  );
  /*--Chip Theme for dark  --*/
  static ChipThemeData darkChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle: TextStyle(color: SColors.white),
    selectedColor: SColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    checkmarkColor: SColors.white,
  );
}
