import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignOfTheDay extends StatelessWidget {
  final String text;

  const SignOfTheDay({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final yellowText = GoogleFonts.roboto(
      textStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24,
        color: theme.colorScheme.primary,
      ),
    );
    List<Widget> iconsWithLetters = [];

    for (int i = 0; i < text.length; i++) {
      if (text[i] == " ") {
        iconsWithLetters.add(const SizedBox(
          width: 2.5,
          height: 1,
        ));

        continue;
      }

      iconsWithLetters
          .add(_buildIconWithLetter(context, Icons.sign_language, text[i]));
    }

    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.secondary,
        borderRadius: BorderRadius.circular(5),
      ),
      padding: const EdgeInsets.all(8),
      constraints: const BoxConstraints(maxWidth: double.infinity),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Sign of the day",
            textAlign: TextAlign.center,
            style: yellowText,
          ),
          SizedBox(height: 10),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 10,
            runSpacing: 10,
            children: iconsWithLetters,
          ),
        ],
      ),
    );
  }

  Widget _buildIconWithLetter(
      BuildContext context, IconData icon, String letter) {
    return Column(
      children: [
        Icon(
          icon,
          size: 36,
          color: Theme.of(context).colorScheme.primary,
        ),
        Text(
          letter,
          style: TextStyle(
            fontSize: 18,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ],
    );
  }
}
