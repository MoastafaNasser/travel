import 'package:flutter/material.dart';
import 'package:travel/models/trips.dart';

class TripItem extends StatelessWidget {
  const TripItem(
      {super.key,
      required this.title,
      required this.imageUrl,
      required this.duration,
      required this.tripType,
      required this.season});

  final String title;
  final String imageUrl;
  final int duration;
  final TripType tripType;
  final Season season;

  void selectTrip() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectTrip,
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
