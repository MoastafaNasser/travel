import 'package:flutter/material.dart';
import 'package:travel/constant/constant.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.imageUrl, required this.title,});
  final String title;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network(
            imageUrl,
            height: 250,
            fit: BoxFit.cover,
            
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            title,style:kPrimaryStyle,
          ),
          // ignore: deprecated_member_use
       
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.black.withOpacity(0.5),
          ),
        ),
      
      ],
    );
  }
}
