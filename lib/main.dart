import 'package:flutter/material.dart';

void main() {
  runApp(const travel());
}

class travel extends StatelessWidget {
  const travel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(child: const Text('Travel' , style: TextStyle(fontSize: 32 , color: Colors.black),)),
        ),
      ),

    );
  }
}