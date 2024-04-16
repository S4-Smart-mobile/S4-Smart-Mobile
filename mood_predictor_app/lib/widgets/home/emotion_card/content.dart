import 'package:flutter/material.dart';
import 'package:mood_predictor_app/classes/emotion_type.dart';
import 'package:mood_predictor_app/helpers/emotion_icons.dart';

class EmotionCardContent extends StatelessWidget {
  late EmotionType predicted;
  late EmotionType actual;

  EmotionCardContent(
      {super.key, required this.predicted, required this.actual});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _createEmotion(context, 'Predicted', predicted),
        const VerticalDivider(
          color: Colors.black26,
          thickness: 1,
        ),
        _createEmotion(context, 'Actual', actual)
      ],
    ));
  }

  Widget _createEmotion(
      BuildContext context, String title, EmotionType emotionType) {
    return SizedBox(
      height: 130,
      width: 100,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                )),
            const Divider(height: 16),
            Icon(getIconData(emotionType),
                size: 48, color: getEmotionColor(emotionType)),
            const Divider(height: 16),
            Text(
              emotionType != EmotionType.Undefined ? emotionType.name : 'Add',
              style: TextStyle(
                  fontSize: 16,
                  color: getEmotionColor(emotionType),
                  fontWeight: FontWeight.w200),
            ),
          ]),
    );
  }
}
