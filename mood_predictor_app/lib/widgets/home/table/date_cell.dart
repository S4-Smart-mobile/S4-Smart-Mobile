import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateCell extends StatelessWidget {
  final String date;

  DateCell({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    var todaysDate = DateTime.now();
    var parsedCurrentDate = DateUtils.dateOnly(DateTime.parse(date));
    var formattedCurrentDate =
        DateFormat('EEE dd-MM').format(parsedCurrentDate).toUpperCase();

    return Expanded(
      child: Center(
        child: buildDateCell(
            formattedCurrentDate, todaysDate, parsedCurrentDate, context),
      ),
    );
  }
}

buildDateCell(String formattedCurrentDate, DateTime todaysDate,
    DateTime parsedCurrentDate, BuildContext context) {
  final theme = Theme.of(context);

  return Text(
    todaysDate.isAtSameMomentAs(parsedCurrentDate)
        ? "TODAY"
        : formattedCurrentDate,
    style: TextStyle(
      color: todaysDate.isAtSameMomentAs(parsedCurrentDate)
          ? theme.colorScheme.primary
          : Colors.black,
      fontWeight: FontWeight.w200,
      fontSize: 16,
    ),
  );
}
