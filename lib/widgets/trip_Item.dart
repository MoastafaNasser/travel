import 'package:flutter/material.dart';
import 'package:travel/models/trips.dart';
import 'package:travel/screens/trips_ditiles_screen.dart';

class TripItem extends StatelessWidget {
  const TripItem(
      {super.key,

      required this.title,
      required this.imageUrl,
      required this.duration,
      required this.tripType,
      required this.season, required this.id});

      final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final TripType tripType;
  final Season season;

  String get SeasonText {
    switch (season) {
      case Season.Winter:
        return "شتاء";
      case Season.spring:
        return "ربيع";
      case Season.summer:
        return "صيف";
      case Season.autumn:
        return "خريف";
      default:
        return "غير معروف";
    }
  }

  String get TripTypetext {
    switch (tripType) {
      case TripType.Exploration:
        return "استكشاف";
      case TripType.Recovery:
        return "نقاهه";
      case TripType.activities:
        return "انشطه";
      case TripType.therepy:
        return "معالجه";
      default:
        return "غير معرووف";
    }
  }

  void selectTrip(BuildContext context) {
    Navigator.of(context).pushNamed(TripsDitilesScreen.screenroute , 
    arguments: id) ;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:()=> selectTrip(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    "$imageUrl",
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 250,
                  width: double.infinity,
                  alignment: Alignment.bottomRight,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black.withOpacity(0),
                        Colors.black.withOpacity(0.8),
                      ],
                      stops: [0.6, 1],
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.headlineLarge,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.today,
                        color: Theme.of(context).hintColor,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text("$duration  ايام"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.sunny,
                        color: Theme.of(context).hintColor,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(SeasonText),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.today,
                        color: Theme.of(context).hintColor,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(TripTypetext),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
