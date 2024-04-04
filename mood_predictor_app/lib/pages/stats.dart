import 'package:flutter/material.dart';
import 'package:mood_predictor_app/widgets/navigation_footer.dart';

class StatsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: theme.colorScheme.background,
        toolbarHeight: 80,
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Placeholder(),
        ),
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
        child: const SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
          child: Column(
            children: [],
          ),
        ),
      ),
      bottomNavigationBar: const NavigationFooter(
        widgetType: WidgetType.stats,
      ),
    );
  }
}
