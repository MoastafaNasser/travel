import 'package:flutter/material.dart';
import 'package:travel/screens/categories_screen.dart';
import 'package:travel/screens/favorite_Screeen.dart';

class TabScreen extends StatelessWidget {
  const TabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("دليل سياحي "),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.dashboard),
                text: "التصنيفات ",
              ),
              Tab(
                icon: Icon(Icons.star),
                text: "المفضله  ",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CategoriesScreen(),
            FavoriteScreeen(),
          ],
        ),
      ),
    );
  }
}
