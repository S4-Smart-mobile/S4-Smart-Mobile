import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mood_predictor_app/classes/emotion_type.dart';
import 'package:mood_predictor_app/helpers/emotion-icons.dart';

class EmotionSelector extends StatelessWidget {
  final Function(EmotionType emotionType) setEmotion;
  final EmotionType selectedEmotion;

  EmotionSelector({
    Key? key,
    required this.setEmotion,
    required this.selectedEmotion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          alignment: AlignmentDirectional.center,
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: EmotionType.values
                    .getRange(1, EmotionType.values.length)
                    .map(
                      (emotion) => GestureDetector(
                        onTap: () => setEmotion(emotion),
                        child: EmotionItem(
                          emotion: emotion,
                          isSelected: emotion == selectedEmotion,
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          )),
    );
  }
}

class EmotionItem extends StatelessWidget {
  final EmotionType emotion;
  final bool isSelected;

  const EmotionItem({
    Key? key,
    required this.emotion,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final iconColor = getEmotionColor(emotion);

    return Icon(
      getIconData(emotion),
      size: isSelected ? 60 : 48,
      color: iconColor,
    );
  }
}
