import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:s4_cultural_exchange/widgets/navigation_footer.dart';
import 'package:go_router/go_router.dart';
import 'package:s4_cultural_exchange/widgets/profile/basic_profile_information.dart';
import 'package:s4_cultural_exchange/widgets/profile/sensitive_settings_row.dart';
import 'package:s4_cultural_exchange/widgets/profile/settings_row.dart';

const horizontalPadding = 16.00;

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              iconSize: 36,
              onPressed: () {
                context.pop();
              },
              color: theme.colorScheme.primary,
            )),
        backgroundColor: theme.colorScheme.background,
        toolbarHeight: 80,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 32, 0),
          child: Text('My profile',
              style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: theme.colorScheme.primary,
              ))),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            children: [
              const BasicProfileInformation(),
              Divider,
              const SettingsRow(
                  description: "Language", icon: Icon(Icons.language)),
              Divider,
              const SettingsRow(
                  description: "Profile details", icon: Icon(Icons.person)),
              Divider,
              const SettingsRow(
                  description: "Settings", icon: Icon(Icons.settings)),
              Divider,
              const SensitiveSettingsRow(
                  description: "Log out", icon: Icon(Icons.logout)),
              Divider,
              const SensitiveSettingsRow(
                  description: "Delete account", icon: Icon(Icons.delete))
            ],
          ),
        ),
      ),
      bottomNavigationBar: const NavigationFooter(
        widgetType: WidgetType.profile,
      ),
    );
  }
}

final Divider = Column(
  children: [
    const SizedBox(height: 7),
    Container(
      height: 2,
      color: Colors.yellow, // Yellow color for the line
    ),
    const SizedBox(height: 7),
  ],
);
