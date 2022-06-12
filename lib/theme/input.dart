import 'package:flutter/material.dart';

var inputDecorationTheme = InputDecorationTheme(
  filled: true,
  fillColor: Colors.grey.shade200,
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: const BorderSide(
      width: 0,
      style: BorderStyle.none,
    ),
  ),
  contentPadding: EdgeInsets.all(16),
);
