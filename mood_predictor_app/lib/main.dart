import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mood_predictor_app/pages/home.dart';
import 'package:mood_predictor_app/pages/more.dart';
import 'package:mood_predictor_app/pages/stats.dart';

void main() {
  runApp(const MoodPredictor());
}

const appName = "Signing Suckers";

final _router = GoRouter(
  initialLocation: '/',
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
      builder: (context, state) => Placeholder(),
    ),
  ],
);

class MoodPredictor extends StatelessWidget {
  const MoodPredictor({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: appName,
      theme: ThemeData(
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
