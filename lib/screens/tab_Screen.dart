import 'package:flutter/material.dart';
import 'package:travel/constant/constant.dart';
import 'package:travel/screens/categories_screen.dart';
import 'package:travel/screens/favorite_Screeen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  void _selectScreen(int index) {
    setState(() {
      _selectScreenindex = index;
    });
  }

  int _selectScreenindex = 0;

  final List<Map<String, dynamic>> _screens = [
    {
      "Screen": CategoriesScreen(),
      "title": "تصنيفات الرحلات ",
    },
    {
      "Screen": FavoriteScreeen(),
      "title": "الرحلات المفضله ",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Center(
          child: Text(
            _screens[_selectScreenindex]["title"],
            style: kPrimaryStyle,
          ),
        ),
      ),
      body: _screens[_selectScreenindex]["Screen"],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).hintColor,
        unselectedItemColor: Colors.white,
        currentIndex: _selectScreenindex,
        onTap: _selectScreen,
        backgroundColor: Theme.of(context).primaryColor,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard), label: "التصنيفات "),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: "المفضله  "),
        ],
      ),
    );
  }
}
