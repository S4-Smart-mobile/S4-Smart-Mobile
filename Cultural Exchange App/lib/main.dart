import 'package:flutter/material.dart';
import 'package:s4_cultural_exchange/classes/courses.dart';
import 'package:s4_cultural_exchange/pages/courses.dart';
import 'package:s4_cultural_exchange/pages/statistics.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CoursesPage(), // Set Home widget as the body
    );
  }
}
