import "package:flutter/material.dart";

class CustomButtonData {
  final String id = UniqueKey().toString();
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
