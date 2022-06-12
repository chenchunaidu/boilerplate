import 'dart:ffi';

import 'package:intl/intl.dart';

class InterestValue {
  double principal;
  double interest;
  int days;
  double total;

  InterestValue(
      {required this.principal,
      required this.interest,
      required this.days,
      required this.total});
}

InterestValue simpleInterest(String startDateStr, String endDateStr,
    String interestRateStr, String principalStr) {
  DateTime startDate = DateFormat("yyyy-MM-dd").parse(startDateStr);
  DateTime endDate = DateFormat("yyyy-MM-dd").parse(endDateStr);
  int days = endDate.difference(startDate).inDays;
  double principal = double.parse(principalStr);
  double interestRate = double.parse(interestRateStr);
  double interestVal = principal * (interestRate / 100) * (days / 365);
  return InterestValue(
      days: days,
      principal: principal,
      interest: interestVal,
      total: interestVal + principal);
}
