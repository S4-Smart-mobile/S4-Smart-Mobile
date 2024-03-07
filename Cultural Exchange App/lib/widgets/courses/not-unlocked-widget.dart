import 'package:flutter/material.dart';

class NotUnlockedWidget extends StatelessWidget {
  NotUnlockedWidget(this.text);
  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.secondary,
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.symmetric(horizontal: 16.0),
      height: 50.0,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Color(0xFFFAB440),
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
