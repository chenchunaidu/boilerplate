import 'package:flutter/material.dart';
import 'package:interest_calculator/theme/colors.dart';

TextTheme getTextTheme(MaterialColor color) {
  return TextTheme(
    button: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600)
        .apply(color: brand),
  );
}
