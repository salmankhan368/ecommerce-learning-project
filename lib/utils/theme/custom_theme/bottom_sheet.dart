import 'package:flutter/material.dart';

class SBottomSheetTheme {
  SBottomSheetTheme._();
  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    constraints: BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    modalBackgroundColor: Colors.white,
  );
  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    constraints: BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    modalBackgroundColor: Colors.white,
  );
}
