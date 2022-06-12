import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:interest_calculator/components/home/result-item.dart';
import 'package:interest_calculator/helpers/simple.dart';

import '../common/typography/index.dart';

class Result extends StatelessWidget {
  Result({Key? key, required this.result}) : super(key: key);

  InterestValue result;

  @override
  Widget build(BuildContext context) {
    return Wrap(
        alignment: WrapAlignment.center,
        direction: Axis.vertical,
        runAlignment: WrapAlignment.center,
        spacing: 10,
        children: [
          ResultItem(
            label: "Days",
            value: result.days.toStringAsFixed(2),
          ),
          ResultItem(
            label: "Interest",
            value: result.interest.toStringAsFixed(2),
          ),
          ResultItem(
            label: "Principal",
            value: result.principal.toStringAsFixed(2),
          ),
          ResultItem(
            label: "Total",
            value: result.total.toStringAsFixed(2),
            valueTypography: "Header3",
          ),
        ]);
  }
}
