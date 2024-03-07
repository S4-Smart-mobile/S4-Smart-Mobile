import 'package:flutter/material.dart';

class NotUnlockedWidget extends StatelessWidget {
  NotUnlockedWidget(this.text);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: 16.0), // Adjust the horizontal margin as needed
      color: Color(0xFF140CA7), // Set background color to #140CA7
      height: 50.0, // Set a fixed height
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Color(0xFFFAB440), // Set text color to #FAB440
            fontSize: 18.0, // Set font size to 18
          ),
        ),
      ),
    );
  }
}
