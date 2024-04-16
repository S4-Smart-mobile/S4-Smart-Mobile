import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HeaderContent extends StatelessWidget {
  late int weekNumber;
  late String startDate;
  late String endDate;

  HeaderContent(
      {super.key,
      required this.weekNumber,
      required this.startDate,
      required this.endDate});

  String _parseDate(String date) {
    var parsedDate = DateTime.parse(date);
    return DateFormat('dd-MM').format(parsedDate);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Text(
          "Week $weekNumber",
          style: TextStyle(
              color: theme.colorScheme.primary,
              fontWeight: FontWeight.w600,
              fontSize: 20),
        ),
        Text("${_parseDate(startDate)} / ${_parseDate(endDate)}",
            style: TextStyle(
                color: theme.colorScheme.primary,
                fontWeight: FontWeight.w500,
                fontSize: 18)),
      ],
    );
  }
}
