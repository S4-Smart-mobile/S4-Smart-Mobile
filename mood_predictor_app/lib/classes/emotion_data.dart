import 'package:mood_predictor_app/classes/emotion_type.dart';

class EmotionWeek {
  final int weekNumber;
  final String averageEmotion;
  final List<EmotionDay> days;

  EmotionWeek({
    required this.weekNumber,
    required this.averageEmotion,
    required this.days,
  });

  factory EmotionWeek.fromJson(Map<String, dynamic> json) {
    return EmotionWeek(
      weekNumber: json['week_number'] as int,
      averageEmotion: json['average_emotion'] as String,
      days: List<EmotionDay>.from(
        json['days'].map((day) => EmotionDay.fromJson(day)),
      ),
    );
  }
}

class EmotionDay {
  final String date;
  final EmotionType prediction;
  final EmotionType actual;

  EmotionDay({
    required this.date,
    required this.prediction,
    required this.actual,
  });

  factory EmotionDay.fromJson(Map<String, dynamic> json) {
    return EmotionDay(
      date: json['date'],
      prediction: json['prediction'],
      actual: json['actual'],
    );
  }
}
