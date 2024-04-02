import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mood_predictor_app/classes/emotion_type.dart';

class NextButton extends StatelessWidget {
  final void Function() goToNextQuestion;
  final EmotionType selectedEmotion;
  final int questionIndex;
  final List<Map<String, String>> questions;

  const NextButton(
      {super.key,
      required this.selectedEmotion,
      required this.questionIndex,
      required this.questions,
      required this.goToNextQuestion});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: TextButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            )),
            alignment: Alignment.center,
            backgroundColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.disabled)) {
                  return theme.colorScheme.secondary;
                }
                return theme.colorScheme.primary;
              },
            ),
          ),
          onPressed: selectedEmotion == EmotionType.Undefined
              ? null
              : () {
                  if (questionIndex < (questions.length - 1)) {
                    goToNextQuestion();
                  } else {
                    context.go("/");
                  }
                },
          child: Text(
            questionIndex == (questions.length - 1) ? "Finish" : "Next",
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
        ));
  }
}

// divider

class PreviousButton extends StatelessWidget {
  final void Function() goBack;

  const PreviousButton({super.key, required this.goBack});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(
            color: theme.colorScheme.primary,
            width: 2.0,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(15))),
      child: TextButton(
        style: const ButtonStyle(
          alignment: Alignment.center,
        ),
        onPressed: () {
          goBack();
        },
        child: Text(
          "Previous",
          style: TextStyle(
            fontSize: 18,
            color: theme.colorScheme.primary,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
