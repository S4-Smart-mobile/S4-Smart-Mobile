import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mood_predictor_app/pages/home.dart';
import 'package:mood_predictor_app/pages/more.dart';
import 'package:mood_predictor_app/pages/questions.dart';
import 'package:mood_predictor_app/pages/setup.dart';
import 'package:mood_predictor_app/pages/stats.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MoodPredictor());

class MoodPredictor extends StatelessWidget {
  MoodPredictor({super.key});

  static const title = "Mood predictor";
  static const finishedSetup = false;

  final _router = GoRouter(
    initialLocation: finishedSetup ? '/' : '/setup',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => HomePage(),
      ),
      GoRoute(
        path: '/statistics',
        builder: (context, state) => StatsPage(),
      ),
      GoRoute(
        path: '/more',
        builder: (context, state) => MorePage(),
      ),
      GoRoute(
        path: '/settings',
        builder: (context, state) => Placeholder(),
      ),
      GoRoute(
        path: '/setup',
        builder: (context, state) => SetupPage(),
        routes: [
          GoRoute(
            path: 'questions',
            builder: (context, state) => QuestionsPage(),
          ),
        ],
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: title,
      theme: ThemeData(
        textTheme: GoogleFonts.nunitoTextTheme(),
        useMaterial3: true,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.purple,
        ).copyWith(
          primary: const Color(0XFF752EBB),
          onPrimary: const Color(0xFFFFFFFF),
          secondary: const Color(0xFFECE9FF),
          onSecondary: const Color(0XFF752EBB),
          background: const Color(0xFFFFFFFF),
          error: const Color(0xFFD90368),
        ),
      ),
      routerConfig: _router,
    );
  }
}
