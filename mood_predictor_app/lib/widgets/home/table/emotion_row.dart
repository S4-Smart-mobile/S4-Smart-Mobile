import 'package:flutter/material.dart';
import 'package:mood_predictor_app/classes/emotion_data.dart';
import 'package:mood_predictor_app/classes/emotion_type.dart';
import 'package:mood_predictor_app/helpers/emotion_icons.dart';
import 'package:mood_predictor_app/widgets/home/table/date_cell.dart';

class EmotionRow extends StatelessWidget {
  final EmotionDay day;

  const EmotionRow({super.key, required this.day});

  @override
  Widget build(BuildContext context) {
    var today = DateUtils.dateOnly(DateTime.now());
    var actual = DateUtils.dateOnly(DateTime.parse(day.date));

    if (today.isAtSameMomentAs(actual)) {
      return todayDay(context);
    } else if (day.actual == EmotionType.Undefined &&
        day.prediction == EmotionType.Undefined) {
      return noDataDay(context);
    } else if (day.actual == day.prediction) {
      return equalDay(context);
    } else {
      return defaultDay(context);
    }
  }

  Widget todayDay(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      color: theme.colorScheme.secondary,
      child: Row(
        children: [
          DateCell(date: day.date),
          _buildEmotionCell(day.prediction),
          _buildEmotionCell(day.actual)
        ],
      ),
    );
  }

  Widget noDataDay(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        DateCell(date: day.date),
        Expanded(
          flex: 2,
          child: Center(
            child: Text(
              "NO DATA",
              style: TextStyle(
                  color: theme.colorScheme.primary,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }

  Widget defaultDay(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          DateCell(date: day.date),
          _buildEmotionCell(day.prediction),
          _buildEmotionCell(day.actual)
        ],
      ),
    );
  }

  Widget equalDay(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          DateCell(date: day.date),
          _buildEmotionCell(day.actual, flexVal: 2),
        ],
      ),
    );
  }

  Widget _buildEmotionCell(EmotionType emotion, {int flexVal = 1}) {
    return Expanded(
      flex: flexVal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Center(
          child: Icon(getIconData(emotion),
              size: 36, color: getEmotionColor(emotion)),
        ),
      ),
    );
  }
}
