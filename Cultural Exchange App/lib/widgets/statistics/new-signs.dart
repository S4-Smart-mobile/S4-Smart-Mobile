import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LearnedWidget extends StatelessWidget {
  final int newSigns;

  const LearnedWidget({Key? key, required this.newSigns}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
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

    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(5),
      ),
      padding: const EdgeInsets.all(8),
      constraints: const BoxConstraints(maxWidth: double.infinity),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("You've learned",
              textAlign: TextAlign.left, style: boldNavyText),
          const SizedBox(height: 8), // Add spacing between text boxes
          Text("$newSigns", textAlign: TextAlign.center, style: boldPurpleText),
          const SizedBox(height: 8), // Add spacing between text boxes
          Text("new signs!", textAlign: TextAlign.right, style: boldNavyText),
        ],
      ),
    );
  }
}
