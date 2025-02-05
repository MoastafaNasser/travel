import 'package:flutter/material.dart';
import 'package:travel/app_data.dart';
import 'package:travel/widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('دليل سياحي'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 7 / 8,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: Categories_data.map(
          (categoryData) => CategoryItem(
            title: categoryData.title,
            imageUrl: categoryData.imageUrl,
          ),
        ).toList(),
      ),
    );
  }
}
