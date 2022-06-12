import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../common/typography/index.dart';

class ResultItem extends StatelessWidget {
  ResultItem(
      {Key? key,
      required this.label,
      this.value = '',
      this.labelTypography = "Body",
      this.valueTypography = "BodyBold"})
      : super(key: key);

  String label;
  String value;
  String? labelTypography;
  String? valueTypography;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.vertical,
      runAlignment: WrapAlignment.center,
      children: [
        CustomTypography(label),
        CustomTypography(
          value,
          as: valueTypography,
        )
      ],
    );
  }
}
