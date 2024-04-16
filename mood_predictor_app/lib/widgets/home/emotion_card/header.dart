import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class EmotionCardHeader extends StatelessWidget {
  final String date;

  EmotionCardHeader({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    var todaysDate = DateUtils.dateOnly(DateTime.now());
    var parsedCurrentDate = DateUtils.dateOnly(DateTime.parse(date));
    var formattedCurrentDate =
        DateFormat('EEEE dd-MM').format(parsedCurrentDate).toUpperCase();

    Widget regularDateText() {
      return Text(
        formattedCurrentDate,
        style: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.w200, fontSize: 16),
      );
    }

    Widget todayDateText() {
      return Text(
        "TODAY",
        style: TextStyle(
            color: theme.colorScheme.primary,
            fontWeight: FontWeight.w200,
            fontSize: 16),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        todaysDate.isAtSameMomentAs(parsedCurrentDate)
            ? todayDateText()
            : regularDateText(),
        more
      ],
    );
  }

  final more = GestureDetector(
    onTap: () {},
    child: const Opacity(
      opacity: 0.5,
      child: Icon(FontAwesomeIcons.ellipsis),
    ),
  );
}
