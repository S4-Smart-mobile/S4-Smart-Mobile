import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mood_predictor_app/widgets/home/week_header/header_content.dart';
import 'package:mood_predictor_app/widgets/home/week_header/week_navigation.dart';

class WeekHeader extends StatelessWidget {
  final int weekNumber;
  final String startDate;
  final String endDate;
  final Function() openNextWeek;
  final Function() openPreviousWeek;
  final Function(int) canNavigate;

  const WeekHeader(
      {super.key,
      required this.weekNumber,
      required this.startDate,
      required this.endDate,
      required this.openNextWeek,
      required this.openPreviousWeek,
      required this.canNavigate});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              WeekNavigation(
                icon: const Icon(FontAwesomeIcons.chevronLeft),
                onPressNavigate: openPreviousWeek,
                canNavigate: () => canNavigate(-1),
              ),
              HeaderContent(
                weekNumber: weekNumber,
                startDate: startDate,
                endDate: endDate,
              ),
              WeekNavigation(
                icon: const Icon(FontAwesomeIcons.chevronRight),
                onPressNavigate: openNextWeek,
                canNavigate: () => canNavigate(1),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
