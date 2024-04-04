import 'package:flutter/material.dart';
import 'package:mood_predictor_app/classes/custom_button_data.dart';
import 'package:mood_predictor_app/pages/settings.dart';
import 'package:mood_predictor_app/widgets/default_header.dart';
import 'package:mood_predictor_app/widgets/home/week_header/week_header.dart';
import 'package:mood_predictor_app/widgets/navigation_footer.dart';
import 'package:mood_predictor_app/widgets/custom_button.dart';

class MorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: DefaultHeader(title: 'More'),
      body: Container(
        constraints: const BoxConstraints.expand(),
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
          child: Column(
            children: [
              CustomButton(
                buttonData: CustomButtonData(
                  text: 'Achievements',
                  icon: Icons.emoji_events,
                  destinationPage: () => const Placeholder(),
                  fontSize: 24,
                ),
              ),
              CustomButton(
                buttonData: CustomButtonData(
                  text: 'Reminders',
                  icon: Icons.notifications,
                  destinationPage: () => const Placeholder(),
                  fontSize: 24,
                ),
              ),
              CustomButton(
                buttonData: CustomButtonData(
                  text: 'Themes',
                  icon: Icons.color_lens,
                  destinationPage: () => const Placeholder(),
                  fontSize: 24,
                ),
              ),
              CustomButton(
                buttonData: CustomButtonData(
                  text: 'Emoji Sets',
                  icon: Icons.emoji_emotions,
                  destinationPage: () => const Placeholder(),
                  fontSize: 24,
                ),
              ),
              CustomButton(
                buttonData: CustomButtonData(
                  text: 'Pin Lock',
                  icon: Icons.lock,
                  destinationPage: () => const Placeholder(),
                  fontSize: 24,
                ),
              ),
              CustomButton(
                buttonData: CustomButtonData(
                  text: 'Stats of the week',
                  icon: Icons.query_stats,
                  destinationPage: () => const Placeholder(),
                  fontSize: 24,
                ),
              ),
              CustomButton(
                buttonData: CustomButtonData(
                  text: 'Proggresion',
                  icon: Icons.checklist,
                  destinationPage: () => const Placeholder(),
                  fontSize: 24,
                ),
              ),
              CustomButton(
                buttonData: CustomButtonData(
                  text: 'Settings',
                  icon: Icons.settings,
                  destinationPage: () => SettingsPage(),
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const NavigationFooter(
        widgetType: WidgetType.more,
      ),
    );
  }
}
