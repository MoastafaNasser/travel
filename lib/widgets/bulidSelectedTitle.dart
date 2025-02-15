
import 'package:flutter/material.dart';

class buildSelectionTitle extends StatelessWidget {
  const buildSelectionTitle({
    super.key, required this.titleText,
  });
  final String titleText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      alignment: Alignment.bottomRight,
      child: Text(
        titleText,
        style: TextTheme.of(context).headlineSmall,
      ),
    );
  }
}