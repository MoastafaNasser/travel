import 'package:flutter/material.dart';
import 'package:travel/constant/constant.dart';

class CategoriesTripesScreen extends StatelessWidget {
  static const screenroute = "/categories_tripes";
  // final String categoryid;
  // final String categoryTitle;

  // const CategoriesTripesScreen(String id, String title,
  //     {super.key,  required this.categoryid,required  this.categoryTitle});

  @override
  Widget build(BuildContext context) {
    final routeArugment =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    final categoryTitle = routeArugment["title"];
    final categoryid = routeArugment["id"];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
            child: Text(
          categoryTitle as String,
          style: kPrimaryStyle,
        )),
      ),
      body: Center(
        child: Text(
          "قائمه برحلات هذا التصنيف",
        ),
      ),
    );
  }
}
