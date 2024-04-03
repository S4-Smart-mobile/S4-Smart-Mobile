import 'package:flutter/material.dart';

class QuestionCounter extends StatelessWidget {
  final int current;
  final int max;

  const QuestionCounter({super.key, required this.current, required this.max});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
            alignment: AlignmentDirectional.center,
            height: 50,
            child: Text(
              "$current/$max",
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w400),
            )));
  }
}
