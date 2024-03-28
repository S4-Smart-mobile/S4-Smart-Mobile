import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

const defaultIconSize = 38.00;

enum WidgetType {
  blank,
  stats,
  home,
  more,
}

class NavigationFooter extends StatelessWidget {
  final WidgetType widgetType;

  const NavigationFooter({super.key, required this.widgetType});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final Widget rocketOutlined = SvgPicture.asset('assets/outlined-rocket.svg',
        colorFilter:
            ColorFilter.mode(theme.colorScheme.primary, BlendMode.srcIn));

    final Widget statsOutlined = SvgPicture.asset(
        'assets/outlined-chart-simple.svg',
        colorFilter:
            ColorFilter.mode(theme.colorScheme.primary, BlendMode.srcIn));

    final Widget moreOutlined = SvgPicture.asset('assets/outlined-gear.svg',
        colorFilter:
            ColorFilter.mode(theme.colorScheme.primary, BlendMode.srcIn));

    final Widget rocketFilled = SvgPicture.asset('assets/solid-rocket.svg',
        colorFilter:
            ColorFilter.mode(theme.colorScheme.primary, BlendMode.srcIn));

    final Widget statsFilled = SvgPicture.asset('assets/solid-chart-simple.svg',
        colorFilter:
            ColorFilter.mode(theme.colorScheme.primary, BlendMode.srcIn));

    final Widget moreFilled = SvgPicture.asset('assets/solid-gear.svg',
        colorFilter:
            ColorFilter.mode(theme.colorScheme.primary, BlendMode.srcIn));

    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 32),
      color: theme.colorScheme.secondary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {
              context.go("/statistics");
            },
            child: Container(
              height: defaultIconSize,
              width: defaultIconSize,
              color: Colors.transparent,
              child:
                  widgetType == WidgetType.stats ? statsFilled : statsOutlined,
            ),
          ),
          TextButton(
            onPressed: () {
              context.go("/");
            },
            child: Container(
              height: defaultIconSize,
              width: defaultIconSize,
              color: Colors.transparent,
              child:
                  widgetType == WidgetType.home ? rocketFilled : rocketOutlined,
            ),
          ),
          TextButton(
            onPressed: () {
              context.go("/more");
            },
            child: Container(
              height: defaultIconSize,
              width: defaultIconSize,
              color: Colors.transparent,
              child: widgetType == WidgetType.more ? moreFilled : moreOutlined,
            ),
          ),
        ],
      ),
    );
  }
}
