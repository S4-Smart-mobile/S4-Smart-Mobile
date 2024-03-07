import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StreakWidget extends StatelessWidget {
  final int streak;

  const StreakWidget({super.key, required this.streak});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final boldYellowText = GoogleFonts.roboto(
        textStyle: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 24,
      color: theme.colorScheme.primary,
    ));

    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.background,
        borderRadius: BorderRadius.circular(5),
      ),
      constraints: const BoxConstraints(minWidth: double.infinity),
      padding: const EdgeInsets.all(8),
      child: Text(
        'Keep your $streak day streak!',
        textAlign: TextAlign.center,
        style: boldYellowText,
      ),
    );
  }
}
