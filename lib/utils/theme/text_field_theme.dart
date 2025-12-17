import 'package:flutter/material.dart';

class STextFormFieldTheme {
  STextFormFieldTheme._();
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: (Colors.grey),
    suffixIconColor: Colors.grey,
    hintStyle: TextStyle().copyWith(color: Colors.black, fontSize: 14),
    labelStyle: TextStyle().copyWith(fontSize: 14, color: Colors.black),
    errorStyle: TextStyle().copyWith(fontSize: 14, color: Colors.black),
    floatingLabelStyle: TextStyle().copyWith(
      color: Colors.black.withOpacity(0.8),
    ),
    border: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(color: Colors.grey, width: 1),
    ),
    enabledBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1, color: Colors.grey),
    ),
    focusedBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1, color: Colors.black12),
    ),

    errorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 12, color: Colors.red),
    ),
    focusedErrorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(width: 1, color: Colors.orange),
    ),
  );
  /*TextFormField For Dark mode */
  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: (Colors.grey),
    suffixIconColor: Colors.grey,
    hintStyle: TextStyle().copyWith(color: Colors.white, fontSize: 14),
    labelStyle: TextStyle().copyWith(fontSize: 14, color: Colors.white),
    errorStyle: TextStyle().copyWith(fontSize: 14, color: Colors.white),
    floatingLabelStyle: TextStyle().copyWith(
      color: Colors.white.withOpacity(0.8),
    ),
    border: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(color: Colors.grey, width: 1),
    ),
    enabledBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1, color: Colors.grey),
    ),
    focusedBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1, color: Colors.white),
    ),

    errorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 12, color: Colors.red),
    ),
    focusedErrorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(width: 1, color: Colors.orange),
    ),
  );
}
