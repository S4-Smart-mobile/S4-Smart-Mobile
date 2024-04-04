import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;

  const Question({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        alignment: AlignmentDirectional.center,
        height: 150,
        child: Text(
          question,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
