import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:s4_cultural_exchange/widgets/statistics/daily_sign.dart';
import 'package:s4_cultural_exchange/widgets/navigation_footer.dart';
import 'package:s4_cultural_exchange/widgets/statistics/new_signs.dart';
import 'package:s4_cultural_exchange/widgets/statistics/progress_graph.dart';
import 'package:s4_cultural_exchange/widgets/statistics/streak.dart';

const horizontalPadding = 16.00;

class StatisticsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: theme.colorScheme.background,
        toolbarHeight: 80,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Text(
            'Welcome András',
            style: GoogleFonts.roboto(
                textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: theme.colorScheme.primary,
            )),
          ),
        ),
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: const SingleChildScrollView(
          padding:
              EdgeInsets.fromLTRB(horizontalPadding, 16, horizontalPadding, 16),
          child: Column(
            children: [
              Divider,
              StreakWidget(streak: 38),
              Divider,
              SignOfTheDay(text: "F U C K"),
              Divider,
              LearnedWidget(newSigns: 17),
              Divider,
              ProgressGraph()
            ],
          ),
        ),
      ),
      bottomNavigationBar: const NavigationFooter(
        widgetType: WidgetType.statistics,
      ),
    );
  }
}

const Divider = SizedBox(height: 16);
