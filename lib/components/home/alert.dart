import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:interest_calculator/components/home/result-item.dart';
import 'package:interest_calculator/components/home/result.dart';
import 'package:interest_calculator/helpers/simple.dart';

import '../common/typography/index.dart';

class ResultAlert extends StatelessWidget {
  ResultAlert(
      {Key? key,
      required this.onOk,
      required this.onCancel,
      required this.result})
      : super(key: key);

  VoidCallback onCancel;
  VoidCallback onOk;
  InterestValue result;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Result(
        result: result,
      ),
      actions: <Widget>[
        TextButton(
          // onPressed: () => Navigator.pop(context, 'Cancel'),
          onPressed: onCancel,
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          // onPressed: () => Navigator.pop(context, 'OK'),
          onPressed: onOk,
          child: const Text('OK'),
        ),
      ],
    );
  }
}
