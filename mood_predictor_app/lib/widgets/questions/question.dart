import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  late final String question;

  Question({required this.question});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: AlignmentDirectional.center,
        child: Text(question,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            )));
  }
}
