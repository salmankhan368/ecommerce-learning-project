import 'package:flutter/cupertino.dart';
import 'package:s_store/utils/constants/colors.dart';

class ShadowStyle {
  static final verticleProductShadow = BoxShadow(
    color: SColors.darkerGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: Offset(0, 2),
  );
  static final horizontalProductShadow = BoxShadow(
    color: SColors.darkerGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: Offset(0, 2),
  );
}
