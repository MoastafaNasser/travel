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
      home: CategoriesScreen(),
    );
  }
}
