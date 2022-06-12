import 'package:intl/intl.dart';
import 'dart:math';

import 'simple.dart';

InterestValue compoundInterest(String startDateStr, String endDateStr,
    String interestRateStr, String principalStr) {
  DateTime startDate = DateFormat("yyyy-MM-dd").parse(startDateStr);
  DateTime endDate = DateFormat("yyyy-MM-dd").parse(endDateStr);
  int days = endDate.difference(startDate).inDays;
  double principal = double.parse(principalStr);
  double interestRate = double.parse(interestRateStr);
  double total = principal * pow((1 + interestRate / 100), (days / 365));
  return InterestValue(
      days: days,
      principal: principal,
      total: total,
      interest: total - principal);
}
