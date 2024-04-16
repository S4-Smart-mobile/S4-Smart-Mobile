import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateCell extends StatelessWidget {
  final String date;

  DateCell({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    var todaysDate = DateUtils.dateOnly(DateTime.now());
    var actualDate = DateUtils.dateOnly(DateTime.parse(date));
    var formattedCurrentDate =
        DateFormat('EEE dd-MM').format(actualDate).toUpperCase();

    return Expanded(
      flex: 1,
      child: Center(
        child: _buildDateCell(
            formattedCurrentDate, todaysDate, actualDate, context),
      ),
    );
  }
}

_buildDateCell(String formattedCurrentDate, DateTime todaysDate,
    DateTime actualDate, BuildContext context) {
  final theme = Theme.of(context);

  return Container(
    constraints: const BoxConstraints(
      maxHeight: 100,
    ),
    decoration: const BoxDecoration(
      border: Border(
        right: BorderSide(
          color: Colors.black38,
          width: 1.0,
        ),
      ),
    ),
    child: Center(
      child: Text(
        todaysDate.isAtSameMomentAs(actualDate)
            ? "TODAY"
            : formattedCurrentDate,
        style: TextStyle(
          color: todaysDate.isAtSameMomentAs(actualDate)
              ? theme.colorScheme.primary
              : Colors.black,
          fontWeight: FontWeight.w200,
          fontSize: 16,
        ),
      ),
    ),
  );
}
