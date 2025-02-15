import 'package:flutter/material.dart';
import 'package:travel/app_data.dart';
import 'package:travel/widgets/bulidSelectedTitle.dart';

class TripsDitilesScreen extends StatelessWidget {
  const TripsDitilesScreen({super.key});

  static const screenroute = "/trip_detiles";

  @override
  Widget build(BuildContext context) {
    final tripId = ModalRoute.of(context)!.settings.arguments as String;

    final SelectedTrip = Trips_data.firstWhere((Trip) => Trip.id == tripId);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: Text(
            "${SelectedTrip.title}",
            style: TextTheme.of(context).headlineLarge,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(
              "${SelectedTrip.imageUrl}",
              fit: BoxFit.cover,
            ),
          ),
          buildSelectionTitle(titleText:  "الانشطه",),
          
          Container(
            alignment: Alignment.bottomRight,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            height: 200,
            margin: EdgeInsets.symmetric(horizontal: 15),
            padding: EdgeInsets.all(10),
            child: ListView.builder(
              itemBuilder: (context, index) => Card(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                child: Text(SelectedTrip.activities[index],),
                ),
                
              ),
              
            ),
            
          ),
          buildSelectionTitle(titleText:  "الانشطه",),
        ],
      ),
    );
  }
}

