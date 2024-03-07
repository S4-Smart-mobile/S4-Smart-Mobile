import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LearnedWidget extends StatelessWidget {
  final int newSigns;

  const LearnedWidget({Key? key, required this.newSigns}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final navyText = GoogleFonts.roboto(
        textStyle: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 24,
      color: theme.colorScheme.background,
    ));
    final purpleText = GoogleFonts.roboto(
        textStyle: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 36,
      color: theme.colorScheme.secondary,
    ));

    return (newSigns <= 0
        ? Container(
            decoration: BoxDecoration(
              color: theme.colorScheme.primary,
              borderRadius: BorderRadius.circular(5),
            ),
            padding: const EdgeInsets.all(8),
            constraints: const BoxConstraints(minWidth: double.infinity),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("You've learned no words,",
                    textAlign: TextAlign.left, style: navyText),
                const SizedBox(height: 8),
                Text("get started!!",
                    textAlign: TextAlign.center, style: purpleText),
              ],
            ),
          )
        : Container(
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
                    textAlign: TextAlign.left, style: navyText),
                const SizedBox(height: 8),
                Text("$newSigns",
                    textAlign: TextAlign.center, style: purpleText),
                const SizedBox(height: 8),
                Text("new signs!", textAlign: TextAlign.right, style: navyText),
              ],
            ),
          ));
  }
}
