import 'package:flutter/material.dart';
import 'package:interest_calculator/theme/colors.dart';

const padding = EdgeInsets.only(left: 36, right: 36, top: 12, bottom: 12);
const fontWeight = FontWeight.w700;

var textButtonTheme =
    TextButtonThemeData(style: TextButton.styleFrom(padding: padding));

var elevatedButtonTheme =
    ElevatedButtonThemeData(style: ElevatedButton.styleFrom(padding: padding));

var outlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        padding: padding,
        side: BorderSide(
            style: BorderStyle.solid, width: 2, color: brand.shade500)));
