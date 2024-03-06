import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:s4_cultural_exchange/widgets/statistics/footer.dart';
import 'package:s4_cultural_exchange/widgets/statistics/new-signs.dart';
import 'package:s4_cultural_exchange/widgets/statistics/streak.dart';

class StatisticsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final boldYellowText = GoogleFonts.roboto(
        textStyle: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 24,
      color: theme.colorScheme.primary,
    ));
    final boldNavyText = GoogleFonts.roboto(
        textStyle: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 24,
      color: theme.colorScheme.background,
    ));
    final boldPurpleText = GoogleFonts.roboto(
        textStyle: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 24,
      color: theme.colorScheme.secondary,
    ));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.background,
        toolbarHeight: 80,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(76, 32, 32, 32),
          child: Text(
            'Welcome Andrés',
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
          padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
          child: Column(
            children: [
              SizedBox(height: 16),
              StreakWidget(streak: 38),
              SizedBox(height: 16),
              LearnedWidget(newSigns: 17),
            ],
          ),
        ),
      ),
      bottomNavigationBar: FooterWidget(
        widgetType: WidgetType.Statistics,
      ),
    );
  }
}
