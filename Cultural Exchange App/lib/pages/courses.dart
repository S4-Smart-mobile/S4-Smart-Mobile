import 'package:flutter/material.dart';

class CoursePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Course overview'),
      ),
      body: Center(
        child: Text('Welcome to the course overview page!'),
      ),
    );
  }
}
