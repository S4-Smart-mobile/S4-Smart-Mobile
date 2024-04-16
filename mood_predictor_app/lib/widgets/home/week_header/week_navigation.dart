import 'package:flutter/material.dart';

class WeekNavigation extends StatelessWidget {
  final Icon icon;
  final Function() onPressNavigate;
  final Function() canNavigate;

  const WeekNavigation({
    super.key,
    required this.icon,
    required this.onPressNavigate,
    required this.canNavigate,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return IconButton(
      onPressed: canNavigate() ? onPressNavigate : null,
      icon: icon,
      color: theme.colorScheme.primary,
      iconSize: 24,
    );
  }
}
