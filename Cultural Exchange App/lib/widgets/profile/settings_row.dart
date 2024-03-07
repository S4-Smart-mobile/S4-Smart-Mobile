import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsRow extends StatelessWidget {
  final String description;
  final Icon icon;

  const SettingsRow({super.key, required this.description, required this.icon});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: IconButton(
                  icon: icon,
                  iconSize: 36,
                  onPressed: () {},
                  color: theme.colorScheme.background,
                )),
            Text(description,
                style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: theme.colorScheme.background,
                ))),
          ]),
          IconButton(
            icon: const Icon(Icons.arrow_forward_ios),
            iconSize: 36,
            onPressed: () {},
            color: theme.colorScheme.primary,
          )
        ],
      ),
    );
  }
}
