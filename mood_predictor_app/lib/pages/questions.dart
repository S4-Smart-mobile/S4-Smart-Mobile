import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mood_predictor_app/classes/emotion_type.dart';
import 'package:mood_predictor_app/widgets/questions/counter.dart';
import 'package:mood_predictor_app/widgets/questions/emotion_selector.dart';
import 'package:mood_predictor_app/widgets/questions/navigational-buttons.dart';
import 'package:mood_predictor_app/widgets/questions/question.dart';

import '../helpers/emotion-icons.dart';

class QuestionsPage extends StatefulWidget {
  @override
  _QuestionsPageState createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  EmotionType selectedEmotion = EmotionType.Undefined;
  final List<Map<String, String>> questions = [
    {'question': "Pooping my pants often makes me feel..."},
    {'question': "The weather often makes me feel.."},
    {'question': "When Morris comes to school, I often feel..."},
  ];

  List<EmotionType> answers = [];
  int questionIndex = 0;

  @override
  void initState() {
    super.initState();
    selectedEmotion = EmotionType.Undefined;
    answers = List<EmotionType>.filled(questions.length, EmotionType.Undefined);
  }

  void setResponse(EmotionType emotionType) {
    setState(() {
      selectedEmotion = emotionType;
      answers[questionIndex] = emotionType;
    });
  }

  void nextQuestion() {
    setState(() {
      questionIndex += 1;
      selectedEmotion = answers[questionIndex];
    });
  }

  void goBack() {
    if ((questionIndex - 1) < 0) {
      context.push('/setup');
      return;
    }

    setState(() {
      questionIndex -= 1;
      selectedEmotion = answers[questionIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Container(
                alignment: AlignmentDirectional.center,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                decoration: BoxDecoration(color: theme.colorScheme.primary),
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: QuestionCounter(
                          current: questionIndex + 1, max: questions.length),
                    ),
                    Expanded(
                      flex: 3,
                      child: Question(
                        question: questions[questionIndex]['question']!,
                      ),
                    ),
                  ],
                )),
          ),
          Expanded(
              flex: 1,
              child: Container(
                alignment: AlignmentDirectional.center,
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      flex: 2,
                      child: EmotionSelector(
                          selectedEmotion: selectedEmotion,
                          setEmotion: setResponse),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        selectedEmotion == EmotionType.Undefined
                            ? "None selected"
                            : selectedEmotion.name,
                        style: TextStyle(
                          fontSize: 32,
                          color: getEmotionColor(selectedEmotion),
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          NextButton(
                            selectedEmotion: selectedEmotion,
                            questionIndex: questionIndex,
                            questions: questions,
                            goToNextQuestion: nextQuestion,
                          ),
                          PreviousButton(
                            goBack: goBack,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
