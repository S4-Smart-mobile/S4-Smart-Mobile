import 'package:flutter/material.dart';

class CourseContentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Course content'),
      ),
      body: Center(
        child: Text('Welcome to the contents of a course!'),
      ),
    );
  }
}
