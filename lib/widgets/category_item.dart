import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.imageUrl, required this.title,});
  final String title;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          imageUrl,
          height: 250,
          fit: BoxFit.cover,
          
        ),
        Container(
          child: Text(
            title,
          ),
        ),
      ],
    );
  }
}
