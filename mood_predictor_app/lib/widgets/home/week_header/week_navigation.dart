import 'package:flutter/material.dart';
import 'package:mood_predictor_app/classes/emotion_type.dart';

class WeekNavigation extends StatelessWidget {
  late Icon icon;
  late Function() onPressNavigate;
  late Function() canNavigate;
  WeekNavigation({
    super.key,
    required this.icon,
    required this.onPressNavigate,
    required this.canNavigate,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: canNavigate() ? onPressNavigate : null,
      icon: icon,
      color: Colors.white,
    );
  }
}
