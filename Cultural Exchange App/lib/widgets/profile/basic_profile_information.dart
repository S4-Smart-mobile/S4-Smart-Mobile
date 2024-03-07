import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BasicProfileInformation extends StatelessWidget {
  const BasicProfileInformation({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/harold.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Divider,
              Text(
                "András István Arató",
                style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: theme.colorScheme.background,
                )),
              ),
              _informationRowBuilder(context, "Phone", "+31 06 263398238"),
              _informationRowBuilder(
                  context, "Email", "Andras.Istvan@gmail.com"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _informationRowBuilder(
      BuildContext context, String rowHeader, String rowData) {
    final theme = Theme.of(context);

    return Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              rowHeader,
              textAlign: TextAlign.left,
              style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: theme.colorScheme.secondary,
              )),
            ),
            Text(
              rowData,
              textAlign: TextAlign.right,
              style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: theme.colorScheme.background,
              )),
            )
          ],
        ));
  }
}

const Divider = SizedBox(height: 16);
