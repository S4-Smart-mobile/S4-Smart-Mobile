import 'package:flutter/material.dart';
import 'package:mood_predictor_app/classes/emotion_type.dart';
import 'package:mood_predictor_app/widgets/home/emotion_card/content.dart';
import 'package:mood_predictor_app/widgets/home/emotion_card/header.dart';

class EmotionCard extends StatelessWidget {
  final EmotionType predicted;
  final EmotionType actual;
  final String date;

  const EmotionCard(
      {super.key,
      required this.predicted,
      required this.actual,
      required this.date});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final NoData = Text(
      "NO DATA",
      style: TextStyle(
          color: theme.colorScheme.primary, fontWeight: FontWeight.w800),
    );

    bool isDataInvalid =
        (predicted == EmotionType.Undefined && actual == EmotionType.Undefined);

    return Material(
        elevation: 5,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              color:
                  isDataInvalid ? theme.colorScheme.secondary : Colors.white),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            EmotionCardHeader(
              date: date,
            ),
            const Divider(
              height: 16,
            ),
            isDataInvalid
                ? NoData
                : EmotionCardContent(
                    actual: actual,
                    predicted: predicted,
                  )
          ]),
        ));
  }
}
