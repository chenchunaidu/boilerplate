import 'package:flutter/material.dart';
import 'package:interest_calculator/components/common/date-input.dart';
import 'package:interest_calculator/components/common/typography/index.dart';
import 'package:intl/intl.dart';

import '../../helpers/simple.dart';
import 'alert.dart';
import 'result-item.dart';

class Simple extends StatelessWidget {
  Simple({Key? key}) : super(key: key);
  TextEditingController startDateInput = TextEditingController();
  TextEditingController endDateInput = TextEditingController();
  TextEditingController interestRate = TextEditingController();
  TextEditingController principalValue = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 24,
      children: [
        Wrap(
          children: [
            const CustomTypography(
              "Start Date",
              as: 'Title',
            ),
            DateField(dateinput: startDateInput),
          ],
        ),
        Wrap(
          children: [
            const CustomTypography(
              "End Date",
              as: 'Title',
            ),
            DateField(dateinput: endDateInput),
          ],
        ),
        Wrap(
          children: [
            const CustomTypography(
              "Money (Initial value)",
              as: 'Title',
            ),
            TextField(
              controller: principalValue,
              keyboardType: TextInputType.number,
            ),
          ],
        ),
        Wrap(
          children: [
            const CustomTypography(
              "Interest per year",
              as: 'Title',
            ),
            TextField(
              controller: interestRate,
              keyboardType: TextInputType.number,
            ),
          ],
        ),
        ElevatedButton(
            onPressed: () {
              InterestValue result = simpleInterest(startDateInput.text,
                  endDateInput.text, interestRate.text, principalValue.text);
              showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => ResultAlert(
                        result: result,
                        onCancel: () => Navigator.pop(context, 'Cancel'),
                        onOk: () => Navigator.pop(context, 'OK'),
                      ));
            },
            child: const CustomTypography(
              'Calculate',
            ))
      ],
    );
  }
}
