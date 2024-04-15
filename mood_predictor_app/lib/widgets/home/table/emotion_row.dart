import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mood_predictor_app/classes/emotion_data.dart';
import 'package:mood_predictor_app/classes/emotion_type.dart';
import 'package:mood_predictor_app/helpers/emotion-icons.dart';
import 'package:mood_predictor_app/widgets/home/table/date_cell.dart';

class EmotionRow extends StatelessWidget {
  final EmotionDay day;

  const EmotionRow({super.key, required this.day});

  @override
  Widget build(BuildContext context) {
    if (day.actual == EmotionType.Undefined &&
        day.prediction == EmotionType.Undefined) {
      return noDataDay(context);
    } else {
      return defaultDay(context);
    }
  }

  Widget noDataDay(BuildContext context) {
    var todaysDate = DateTime.now();
    var parsedCurrentDate = DateUtils.dateOnly(DateTime.parse(day.date));
    var formattedCurrentDate =
        DateFormat('EEE dd-MM').format(parsedCurrentDate).toUpperCase();

    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 32),
        child: Row(
          children: [
            buildDateCell(
                formattedCurrentDate, todaysDate, parsedCurrentDate, context),
            const Expanded(
              flex: 2,
              child: Center(
                child: Text("No data!"),
              ),
            ),
          ],
        ));
  }

  Widget defaultDay(BuildContext context) {
    var todaysDate = DateTime.now();
    var parsedCurrentDate = DateUtils.dateOnly(DateTime.parse(day.date));
    var formattedCurrentDate =
        DateFormat('EEE dd-MM').format(parsedCurrentDate).toUpperCase();

    return SizedBox(
      child: Row(
        children: [
          buildDateCell(
              formattedCurrentDate, todaysDate, parsedCurrentDate, context),
          _buildEmotionCell(day.prediction),
          _buildEmotionCell(day.actual)
        ],
      ),
    );
  }

  Widget _buildEmotionCell(EmotionType emotion) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Center(
          child: Icon(getIconData(emotion),
              size: 36, color: getEmotionColor(emotion)),
        ),
      ),
    );
  }
}
