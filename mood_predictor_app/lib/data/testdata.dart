import 'package:mood_predictor_app/classes/emotion_data.dart';
import 'package:mood_predictor_app/classes/emotion_type.dart';

final List<EmotionDay> week1Days = [
  EmotionDay(
      date: "2024-04-01",
      prediction: EmotionType.Happy,
      actual: EmotionType.Great),
  EmotionDay(
      date: "2024-04-02",
      prediction: EmotionType.Great,
      actual: EmotionType.Great),
  EmotionDay(
      date: "2024-04-03",
      prediction: EmotionType.Ok,
      actual: EmotionType.Happy),
  EmotionDay(
      date: "2024-04-04", prediction: EmotionType.Sad, actual: EmotionType.Ok),
  EmotionDay(
      date: "2024-04-05",
      prediction: EmotionType.Happy,
      actual: EmotionType.Ok),
  EmotionDay(
      date: "2024-04-06",
      prediction: EmotionType.Great,
      actual: EmotionType.Happy),
  EmotionDay(
      date: "2024-04-07",
      prediction: EmotionType.Angry,
      actual: EmotionType.Ok),
];

final List<EmotionDay> week2Days = [
  EmotionDay(
      date: "2024-04-08",
      prediction: EmotionType.Great,
      actual: EmotionType.Ok),
  EmotionDay(
      date: "2024-04-09",
      prediction: EmotionType.Ok,
      actual: EmotionType.Undefined),
  EmotionDay(
      date: "2024-04-10",
      prediction: EmotionType.Undefined,
      actual: EmotionType.Undefined),
  EmotionDay(
      date: "2024-04-11", prediction: EmotionType.Sad, actual: EmotionType.Sad),
  EmotionDay(
      date: "2024-04-12",
      prediction: EmotionType.Happy,
      actual: EmotionType.Ok),
  EmotionDay(
      date: "2024-04-13",
      prediction: EmotionType.Ok,
      actual: EmotionType.Happy),
  EmotionDay(
      date: "2024-04-14",
      prediction: EmotionType.Great,
      actual: EmotionType.Great),
];

final List<EmotionDay> week3Days = [
  EmotionDay(
      date: "2024-04-15", prediction: EmotionType.Ok, actual: EmotionType.Sad),
  EmotionDay(
      date: "2024-04-16",
      prediction: EmotionType.Happy,
      actual: EmotionType.Happy),
];

final EmotionWeek week_1 = EmotionWeek(
  weekNumber: 14,
  averageEmotion: "Ok",
  days: week1Days,
);

final EmotionWeek week_2 = EmotionWeek(
  weekNumber: 15,
  averageEmotion: "Sad",
  days: week2Days,
);

final EmotionWeek week_3 = EmotionWeek(
  weekNumber: 16,
  averageEmotion: "Ok",
  days: week3Days,
);

final List<EmotionWeek> testdata = [
  week_1,
  week_2,
  week_3,
];
