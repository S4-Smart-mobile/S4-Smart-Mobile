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
    return Column(
      children: [
        Text(
          "Week $weekNumber",
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        Text("${_parseDate(startDate)} / ${_parseDate(endDate)}",
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500)),
      ],
    );
  }
}
