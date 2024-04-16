import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mood_predictor_app/classes/emotion_type.dart';
import 'package:mood_predictor_app/widgets/questions/counter.dart';
import 'package:mood_predictor_app/widgets/questions/emotion_selector.dart';
import 'package:mood_predictor_app/widgets/questions/navigational_buttons.dart';
import 'package:mood_predictor_app/widgets/questions/question.dart';
import '../helpers/emotion_icons.dart';

class QuestionsPage extends StatefulWidget {
  const QuestionsPage({super.key});

  @override
  QuestionsPageState createState() => QuestionsPageState();
}

class QuestionsPageState extends State<QuestionsPage> {
  EmotionType selectedEmotion = EmotionType.Undefined;
  final List<Map<String, String>> questions = [
    {'question': "When I visit family I often feel.."},
    {'question': "When I see my friends, I often feel.."},
    {'question': "The days I have to work, I often feel..."},
    {'question': "When I can work on my hobbies, I often feel..."},
    {'question': "Going shopping often makes me feel..."},
    {'question': "Exercising often makes me feel..."},
  ];

  List<EmotionType> answers = [];
  int questionIndex = 0;

  @override
  void initState() {
    super.initState();
    answers = List<EmotionType>.filled(questions.length, EmotionType.Undefined);
    selectedEmotion = answers[questionIndex];
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
        mainAxisAlignment: MainAxisAlignment.center,
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
                    QuestionCounter(
                        current: questionIndex + 1, max: questions.length),
                    Question(
                      question: questions[questionIndex]['question']!,
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
                    EmotionSelector(
                        selectedEmotion: selectedEmotion,
                        setEmotion: setResponse),
                    Expanded(
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
                    Column(
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
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
