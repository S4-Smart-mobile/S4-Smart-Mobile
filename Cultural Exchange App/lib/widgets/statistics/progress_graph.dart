import 'package:flutter/material.dart';

class ProgressGraph extends StatelessWidget {
  const ProgressGraph({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
        decoration: BoxDecoration(
          color: theme.colorScheme.secondary,
          borderRadius: BorderRadius.circular(5),
        ),
        padding: const EdgeInsets.all(8),
        constraints: const BoxConstraints(maxWidth: double.infinity),
        child: const Image(
          image: AssetImage("assets/images/chart.png"),
          alignment: Alignment.center,
        ));
  }
}
