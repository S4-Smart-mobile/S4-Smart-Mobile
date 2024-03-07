import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:s4_cultural_exchange/pages/courses.dart';
import 'package:s4_cultural_exchange/pages/profile.dart';
import 'package:s4_cultural_exchange/pages/statistics.dart';

void main() {
  runApp(const SigningSuckers());
}

const appName = "Signing Suckers";

final _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => StatisticsPage(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => ProfilePage(),
    ),
    GoRoute(
      path: '/courses',
      builder: (context, state) => CoursesPage(),
    ),
  ],
);

class SigningSuckers extends StatelessWidget {
  const SigningSuckers({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: appName,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.amber,
        ).copyWith(
          primary: const Color(0xFFFAB440),
          secondary: const Color(0xFF140CA7),
          background: const Color(0xFF07143F),
          onBackground: const Color(0xFFFFFFFF),
          error: const Color(0xFFD90368),
        ),
      ),
      routerConfig: _router,
    );
  }
}
