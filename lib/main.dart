import 'package:flutter/material.dart';

import 'package:travel/screens/categories_screen.dart';

void main() {
  runApp(const travelApp());
}

class travelApp extends StatelessWidget {
  const travelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Travel App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        hintColor: Colors.amber,
        textTheme: ThemeData.light().textTheme.copyWith(
              headlineSmall: TextStyle(
                color: Colors.blue,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              headlineLarge: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      home: CategoriesScreen(),
    );
  }
}
