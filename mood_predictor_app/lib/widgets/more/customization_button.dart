import 'package:flutter/material.dart';
import 'package:mood_predictor_app/classes/custom_button_data.dart';

class CustomizationButton extends StatelessWidget {
  final CustomButtonData buttonData;

  CustomizationButton({required this.buttonData});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => buttonData.destinationPage()),
        );
      },
      child: Column(children: [
        Container(
          padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.transparent),
          ),
          child: Row(
            children: [
              Icon(
                buttonData.icon,
                color: theme.colorScheme.primary,
                size: buttonData.fontSize * 1.5,
              ),
              const Spacer(),
              Text(
                buttonData.text,
                style: TextStyle(
                  color: theme.colorScheme.primary,
                  fontSize: buttonData.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              Icon(
                Icons.arrow_forward,
                color: theme.colorScheme.primary,
                size: buttonData.fontSize * 1.5,
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 1,
          color: theme.colorScheme.primary,
        ),
      ]),
    );
  }
}
