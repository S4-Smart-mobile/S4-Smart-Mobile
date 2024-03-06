import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum WidgetType {
  List,
  Statistics,
  Profile,
}

class FooterWidget extends StatelessWidget {
  final WidgetType widgetType;

  FooterWidget({required this.widgetType});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 32),
      color: theme.colorScheme.background,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.list),
            iconSize: widgetType == WidgetType.List ? 48 : 36,
            onPressed: () {},
            color: theme.colorScheme.primary,
          ),
          IconButton(
            icon: const Icon(Icons.query_stats),
            iconSize: widgetType == WidgetType.Statistics ? 48 : 36,
            onPressed: () {},
            color: theme.colorScheme.primary,
          ),
          IconButton(
            icon: const Icon(Icons.person),
            iconSize: widgetType == WidgetType.Profile ? 48 : 36,
            onPressed: () {},
            color: theme.colorScheme.primary,
          ),
        ],
      ),
    );
  }
}
