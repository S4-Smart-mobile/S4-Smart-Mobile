import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mood_predictor_app/classes/emotion_type.dart';
import 'package:mood_predictor_app/helpers/emotion-icons.dart';

class EmotionSelector extends StatefulWidget {
  final Function(EmotionType emotionType) setEmotion;
  final EmotionType selectedEmotion;

  EmotionSelector(
      {Key? key, required this.setEmotion, required this.selectedEmotion})
      : super(key: key);

  @override
  EmotionSelectorState createState() => EmotionSelectorState(selectedEmotion);
}

class EmotionSelectorState extends State<EmotionSelector> {
  EmotionType selectedEmotion;

  EmotionSelectorState(this.selectedEmotion);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            alignment: AlignmentDirectional.center,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: EmotionType.values
                      .getRange(1, EmotionType.values.length)
                      .map((emotion) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedEmotion = emotion;
                          widget.setEmotion(emotion);
                        });
                      },
                      child: EmotionItem(
                        emotion: emotion,
                        isSelected: emotion == selectedEmotion,
                      ),
                    );
                  }).toList(),
                ),
              ],
            )));
  }
}

class EmotionItem extends StatelessWidget {
  final EmotionType emotion;
  final bool isSelected;

  const EmotionItem(
      {super.key, required this.emotion, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    Color iconColor = getEmotionColor(emotion);

    return Icon(
      getIconData(emotion),
      size: isSelected ? 60 : 48,
      color: iconColor,
    );
  }
}
