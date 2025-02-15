import 'package:flutter/material.dart';
import 'package:travel/app_data.dart';
import 'package:travel/constant/constant.dart';
import 'package:travel/widgets/trip_Item.dart';

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
    final filteredTrips = Trips_data.where((trip) {
      return trip.categories.contains(categoryid);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
            child: Text(
          categoryTitle as String,
          style: kPrimaryStyle,
        )),
      ),
      body: ListView.builder(
        itemCount: filteredTrips.length,
        itemBuilder: (BuildContext context, int index) {
          return TripItem(
            id: filteredTrips[index].id,
            title: filteredTrips[index].title,
            imageUrl: filteredTrips[index].imageUrl,
            duration: filteredTrips[index].duration,
            tripType: filteredTrips[index].tripType,
            season: filteredTrips[index].season,
          );
        },
      ),
    );
  }
}
