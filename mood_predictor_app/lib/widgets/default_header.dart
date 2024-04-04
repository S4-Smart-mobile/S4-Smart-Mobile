import 'package:flutter/material.dart';

class DefaultHeader extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const DefaultHeader({required this.title});

  @override
  Size get preferredSize => Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(
      elevation: 0,
      backgroundColor: theme.colorScheme.primary,
      title: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
