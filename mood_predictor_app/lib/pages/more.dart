import 'package:flutter/material.dart';
import 'package:mood_predictor_app/classes/custom_button_data.dart';
import 'package:mood_predictor_app/pages/settings.dart';
import 'package:mood_predictor_app/widgets/navigation_footer.dart';
import 'package:mood_predictor_app/widgets/more/customization_button.dart';

class MorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        alignment: AlignmentDirectional.center,
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
          child: Column(
            children: [
              CustomizationButton(
                buttonData: CustomButtonData(
                  text: 'Achievements',
                  icon: Icons.emoji_events,
                  destinationPage: () => const Placeholder(),
                  fontSize: 24,
                ),
              ),
              CustomizationButton(
                buttonData: CustomButtonData(
                  text: 'Reminders',
                  icon: Icons.notifications,
                  destinationPage: () => const Placeholder(),
                  fontSize: 24,
                ),
              ),
              CustomizationButton(
                buttonData: CustomButtonData(
                  text: 'Themes',
                  icon: Icons.color_lens,
                  destinationPage: () => const Placeholder(),
                  fontSize: 24,
                ),
              ),
              CustomizationButton(
                buttonData: CustomButtonData(
                  text: 'Emoji Sets',
                  icon: Icons.emoji_emotions,
                  destinationPage: () => const Placeholder(),
                  fontSize: 24,
                ),
              ),
              CustomizationButton(
                buttonData: CustomButtonData(
                  text: 'App lock',
                  icon: Icons.lock,
                  destinationPage: () => const Placeholder(),
                  fontSize: 24,
                ),
              ),
              CustomizationButton(
                buttonData: CustomButtonData(
                  text: 'Data',
                  icon: Icons.query_stats,
                  destinationPage: () => const Placeholder(),
                  fontSize: 24,
                ),
              ),
              CustomizationButton(
                buttonData: CustomButtonData(
                  text: 'Progression',
                  icon: Icons.checklist,
                  destinationPage: () => const Placeholder(),
                  fontSize: 24,
                ),
              ),
              CustomizationButton(
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
