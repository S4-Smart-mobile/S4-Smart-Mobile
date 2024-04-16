import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mood_predictor_app/classes/custom_button_data.dart';
import 'package:mood_predictor_app/widgets/navigation_footer.dart';
import 'package:mood_predictor_app/widgets/more/customization_button.dart';
import 'package:mood_predictor_app/widgets/settings/user_bracket.dart';
import 'package:mood_predictor_app/classes/user.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    const double fontSize = 18;

    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: theme.colorScheme.primary,
        toolbarHeight: 80,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: IconButton(
            icon: const Icon(
              FontAwesomeIcons.chevronLeft,
              color: Colors.white,
              size: 24,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Text(
            "Settings",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UserBracket(
                user: User(
                  fullName: 'John Doe',
                  email: 'johndoe@gmail.com',
                  profilePictureUrl:
                      'https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50',
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Configurations',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(height: 8),
              CustomizationButton(
                buttonData: CustomButtonData(
                  text: 'Language',
                  icon: Icons.language,
                  destinationPage: () => const Placeholder(),
                  fontSize: fontSize,
                ),
              ),
              CustomizationButton(
                buttonData: CustomButtonData(
                  text: 'Accessibility',
                  icon: Icons.accessibility_new,
                  destinationPage: () => const Placeholder(),
                  fontSize: fontSize,
                ),
              ),
              CustomizationButton(
                buttonData: CustomButtonData(
                  text: 'Data Usage',
                  icon: Icons.data_usage,
                  destinationPage: () => const Placeholder(),
                  fontSize: fontSize,
                ),
              ),
              const SizedBox(height: 32),
              const Text(
                'Other',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(height: 8),
              CustomizationButton(
                buttonData: CustomButtonData(
                  text: 'Help & Support',
                  icon: Icons.help,
                  destinationPage: () => const Placeholder(),
                  fontSize: fontSize,
                ),
              ),
              CustomizationButton(
                buttonData: CustomButtonData(
                  text: 'About Us',
                  icon: Icons.info,
                  destinationPage: () => const Placeholder(),
                  fontSize: fontSize,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const NavigationFooter(
        widgetType: WidgetType.blank,
      ),
    );
  }
}
