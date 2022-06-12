import 'package:flutter/material.dart';
import 'package:interest_calculator/theme/colors.dart';
import 'package:interest_calculator/theme/buttons.dart';
import 'package:interest_calculator/theme/text.dart';

import 'input.dart';

ThemeData getTheme(BuildContext context) {
  return ThemeData(
      useMaterial3: true,
      primarySwatch: brand,
      primaryColor: brand,
      textTheme: getTextTheme(brand),
      textButtonTheme: textButtonTheme,
      elevatedButtonTheme: elevatedButtonTheme,
      outlinedButtonTheme: outlinedButtonTheme,
      inputDecorationTheme: inputDecorationTheme);
}
