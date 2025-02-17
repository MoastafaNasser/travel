import 'package:flutter/material.dart';
import 'package:travel/app_data.dart';

class TripsDitilesScreen extends StatelessWidget {
  const TripsDitilesScreen({super.key});

  static const screenroute = "/trip_detiles";

  @override
  Widget buildSelectionTitle(
    BuildContext context,
    String titleText,
  ) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      alignment: Alignment.bottomRight,
      child: Text(
        titleText,
        style: TextTheme.of(context).headlineSmall,
      ),
    );
  }

  Widget buildListViewContanier(Widget child) {
    return Container(
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
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final tripId = ModalRoute.of(context)!.settings.arguments as String;

    final SelectedTrip = Trips_data.firstWhere((Trip) => Trip.id == tripId);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Center(
          child: Text(
            SelectedTrip.title,
            style: TextTheme.of(context).headlineLarge,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                SelectedTrip.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            buildSelectionTitle(
              context,
              "الانشطه",
            ),
            buildListViewContanier(
              ListView.builder(
                itemCount: SelectedTrip.activities.length,
                itemBuilder: (context, index) => Card(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    child: Text(
                      SelectedTrip.activities[index],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            buildSelectionTitle(
              context,
              " البرنامج اليومي",
            ),
            buildListViewContanier(
              ListView.builder(
                itemCount: SelectedTrip.programs.length,
                itemBuilder: (context, Index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          child: Text("يوم ${Index + 1}"),
                        ),
                        title: Text(
                          SelectedTrip.programs[Index],
                        ),
                      ),
                      Divider(),
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
