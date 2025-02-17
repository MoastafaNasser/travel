import 'package:flutter/material.dart';

class FiltersScreen extends StatelessWidget {
  const FiltersScreen({super.key});

  static const Screenroute = '/filters';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("الفلتره "),
      ),
      body: Center(child: Text("هذه صفحه الفلتره ")),
    );
  }
}
