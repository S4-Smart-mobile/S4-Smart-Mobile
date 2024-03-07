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
      pageBuilder: (context, state) => CustomTransitionPage<void>(
        key: state.pageKey,
        child: StatisticsPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            SlideTransition(
          position: animation.drive(
            Tween<Offset>(
              begin: const Offset(0, -0.8),
              end: Offset.zero,
            ).chain(CurveTween(curve: Curves.easeOutSine)),
          ),
          child: child,
        ),
      ),
    ),
    GoRoute(
      path: '/courses',
      pageBuilder: (context, state) => CustomTransitionPage<void>(
        key: state.pageKey,
        child: CoursesPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            SlideTransition(
          position: animation.drive(
            Tween<Offset>(
              begin: const Offset(-0.8, 0),
              end: Offset.zero,
            ).chain(CurveTween(curve: Curves.easeOutSine)),
          ),
          child: child,
        ),
      ),
    ),
    GoRoute(
      path: '/profile',
      pageBuilder: (context, state) => CustomTransitionPage<void>(
        key: state.pageKey,
        child: ProfilePage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            SlideTransition(
          position: animation.drive(
            Tween<Offset>(
              begin: const Offset(0.8, 0),
              end: Offset.zero,
            ).chain(CurveTween(curve: Curves.easeOutSine)),
          ),
          child: child,
        ),
      ),
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
