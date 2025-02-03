import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(child: const Text('دليل سياحي' , style: TextStyle(fontSize: 32 , color: Colors.black),)),
      ),
    );
  }
}