import 'package:flutter/material.dart';

extension TextStyleEx on TextStyle? {

  TextStyle get medium {
    return this!.copyWith(
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get bold {
    return this!.copyWith(
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle withColor(Color? color) {
    return this!.copyWith(
      color: color,
    );
  }

  TextStyle mergeWithColor(TextStyle other) {
    return this!.copyWith(
      color: other.color,
    );
  }

  TextStyle withSize(double fontSize) {
    return this!.copyWith(
      fontSize: fontSize,
    );
  }
}