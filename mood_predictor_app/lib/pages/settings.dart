import 'package:flutter/material.dart';
import 'package:mood_predictor_app/classes/custom_button_data.dart';
import 'package:mood_predictor_app/widgets/default_header.dart';
import 'package:mood_predictor_app/widgets/navigation_footer.dart';
import 'package:mood_predictor_app/widgets/custom_button.dart';
import 'package:mood_predictor_app/widgets/user_bracket.dart';
import 'package:mood_predictor_app/classes/user.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final double fontSize = 18;

    return Scaffold(
      appBar: DefaultHeader(title: 'Settings'),
      body: Container(
        constraints: const BoxConstraints.expand(),
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UserBracket(
                user: User(
                  fullName: 'John Doe',
                  email: 'johndoe@shemale.com',
                  profilePictureUrl:
                      'https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50',
                ),
              ),
              SizedBox(height: 16),
              const Text(
                'Configurations',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 8),
              CustomButton(
                buttonData: CustomButtonData(
                  text: 'Language',
                  icon: Icons.language,
                  destinationPage: () => const Placeholder(),
                  fontSize: fontSize,
                ),
              ),
              CustomButton(
                buttonData: CustomButtonData(
                  text: 'Accessibility',
                  icon: Icons.accessibility_new,
                  destinationPage: () => const Placeholder(),
                  fontSize: fontSize,
                ),
              ),
              CustomButton(
                buttonData: CustomButtonData(
                  text: 'Data Usage',
                  icon: Icons.data_usage,
                  destinationPage: () => const Placeholder(),
                  fontSize: fontSize,
                ),
              ),
              SizedBox(height: 32),
              const Text(
                'Other',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 8),
              CustomButton(
                buttonData: CustomButtonData(
                  text: 'Help & Support',
                  icon: Icons.help,
                  destinationPage: () => const Placeholder(),
                  fontSize: fontSize,
                ),
              ),
              CustomButton(
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
