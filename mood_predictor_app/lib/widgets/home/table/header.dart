import 'package:flutter/material.dart';

class TableHeader extends StatelessWidget {
  const TableHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildCell('Date', context),
        _buildCell('Prediction', context),
        _buildCell('Actual', context),
      ],
    );
  }

  _buildCell(String title, BuildContext context) {
    final theme = Theme.of(context);

    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: theme.colorScheme.primary,
              width: 2.0,
              style: BorderStyle.solid,
            ),
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
