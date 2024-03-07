import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

const selectedIconSize = 48.00;
const defaultIconSize = 24.00;

enum WidgetType {
  courses,
  statistics,
  profile,
}

class NavigationFooter extends StatelessWidget {
  final WidgetType widgetType;

  const NavigationFooter({super.key, required this.widgetType});

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
            iconSize: widgetType == WidgetType.courses
                ? selectedIconSize
                : defaultIconSize,
            onPressed: () {
              context.go("/courses");
            },
            color: theme.colorScheme.primary,
          ),
          IconButton(
            icon: const Icon(Icons.query_stats),
            iconSize: widgetType == WidgetType.statistics
                ? selectedIconSize
                : defaultIconSize,
            onPressed: () {
              context.go("/");
            },
            color: theme.colorScheme.primary,
          ),
          IconButton(
            icon: const Icon(Icons.person),
            iconSize: widgetType == WidgetType.profile
                ? selectedIconSize
                : defaultIconSize,
            onPressed: () {
              context.push("/profile");
            },
            color: theme.colorScheme.primary,
          ),
        ],
      ),
    );
  }
}
