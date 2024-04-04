import "dart:convert";
import "package:flutter/material.dart";
import "package:mood_predictor_app/widgets/more/customization_button.dart";

class CustomButtonData {
  final String id = new UniqueKey().toString();
  final String text;
  final IconData icon;
  final Widget Function() destinationPage;
  final double fontSize;

  CustomButtonData({
    required this.text,
    required this.icon,
    required this.destinationPage,
    required this.fontSize,
  });
}
