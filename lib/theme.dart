import 'package:flutter/material.dart';
import 'package:flutter_shopping_cart/constants.dart';

ThemeData theme() {
  return ThemeData(
    colorScheme: ColorScheme.light().copyWith(
      primary: kPrimaryColor,
      secondary: kSecondaryColor,
    ),
  );
}
