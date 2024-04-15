import 'package:flutter/material.dart';
import 'package:mood_predictor_app/classes/emotion_data.dart';
import 'package:mood_predictor_app/widgets/home/table/emotion_row.dart';
import 'package:mood_predictor_app/widgets/home/table/header.dart';

class TableBuilder extends StatelessWidget {
  late EmotionWeek week;

  TableBuilder({super.key, required this.week});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: week.days.length,
      itemBuilder: (BuildContext context, int dayIndex) {
        if (dayIndex > 0) {
          return Container(
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
            ),
            child: EmotionRow(day: week.days[dayIndex]),
          );
        } else {
          return EmotionRow(day: week.days[dayIndex]);
        }
      },
    );
  }
}
