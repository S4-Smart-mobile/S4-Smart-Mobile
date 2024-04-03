import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mood_predictor_app/classes/emotion_type.dart';

IconData getIconData(EmotionType emotion) {
  switch (emotion) {
    case EmotionType.Happy:
      return FontAwesomeIcons.faceSmile;
    case EmotionType.Great:
      return FontAwesomeIcons.faceGrin;
    case EmotionType.Ok:
      return FontAwesomeIcons.faceMeh;
    case EmotionType.Sad:
      return FontAwesomeIcons.faceSadCry;
    case EmotionType.Angry:
      return FontAwesomeIcons.faceAngry;
    default:
      return FontAwesomeIcons.plus;
  }
}

Color getEmotionColor(EmotionType emotion) {
  switch (emotion) {
    case EmotionType.Happy:
      return happyColor;
    case EmotionType.Great:
      return satisfiedColor;
    case EmotionType.Ok:
      return okColor;
    case EmotionType.Sad:
      return sadColor;
    case EmotionType.Angry:
      return angryColor;
    default:
      return Colors.black;
  }
}

var happyColor = const Color(0xFF43AA8B);
var satisfiedColor = const Color(0xFF468FAF);
var okColor = const Color(0xFFF8961E);
var sadColor = const Color(0xFFF3722C);
var angryColor = const Color(0xFFF94144);
