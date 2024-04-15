import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mood_predictor_app/classes/emotion_data.dart';
import 'package:mood_predictor_app/classes/emotion_type.dart';
import 'package:mood_predictor_app/helpers/emotion-icons.dart';
import 'package:mood_predictor_app/widgets/home/emotion_card/emotion_card.dart';
import 'package:mood_predictor_app/widgets/home/table/header.dart';
import 'package:mood_predictor_app/widgets/home/table/table_builder.dart';
import 'package:mood_predictor_app/widgets/home/week_header/week_header.dart';
import 'package:mood_predictor_app/widgets/navigation_footer.dart';
import 'package:mood_predictor_app/data/testdata.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late EmotionWeek selectedWeek;
  late List<EmotionWeek> weeks;
  late int weekIndex;

  @override
  void initState() {
    super.initState();
    weeks = testdata;
    weekIndex = getIndexByWeekNumber(weeks.last.weekNumber);
    selectedWeek = sortSundayFirst(weeks[weekIndex]);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: theme.colorScheme.primary,
        toolbarHeight: 100,
        title: WeekHeader(
          weekNumber: selectedWeek.weekNumber,
          startDate: selectedWeek.days.last.date,
          endDate: selectedWeek.days.first.date,
          openNextWeek: _openNextWeek,
          openPreviousWeek: _openPreviousWeek,
          canNavigate: _weekNextToExists,
        ),
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const TableHeader(),
            Expanded(
              child: TableBuilder(week: selectedWeek),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavigationFooter(
        widgetType: WidgetType.home,
      ),
    );
  }

  static DateTime _getDateValue(String date) {
    DateTime dateTime = DateTime.parse(date);
    return DateUtils.dateOnly(dateTime);
  }

  int getIndexByWeekNumber(int weekNumber) {
    var x = weeks.indexWhere((week) => week.weekNumber == weekNumber);
    return x;
  }

  EmotionWeek sortSundayFirst(EmotionWeek week) {
    week.days.sort(
        (a, b) => (_getDateValue(b.date)).compareTo(_getDateValue(a.date)));
    return week;
  }

  bool _weekNextToExists(int shift) {
    return getIndexByWeekNumber(selectedWeek.weekNumber + shift) != -1;
  }

  void _openNextWeek() {
    if (_weekNextToExists(1)) {
      setState(() {
        selectedWeek = sortSundayFirst(
            weeks[getIndexByWeekNumber(selectedWeek.weekNumber + 1)]);
      });
    }
  }

  void _openPreviousWeek() {
    if (_weekNextToExists(-1)) {
      setState(() {
        selectedWeek = sortSundayFirst(
            weeks[getIndexByWeekNumber(selectedWeek.weekNumber - 1)]);
      });
    }
  }
}
