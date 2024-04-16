import 'package:flutter/material.dart';
import 'package:mood_predictor_app/classes/emotion_type.dart';
import 'package:mood_predictor_app/helpers/emotion_icons.dart';

class EmotionSelector extends StatelessWidget {
  final Function(EmotionType emotionType) setEmotion;
  final EmotionType selectedEmotion;

  const EmotionSelector({
    super.key,
    required this.setEmotion,
    required this.selectedEmotion,
  });

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
    super.key,
    required this.emotion,
    required this.isSelected,
  });

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
