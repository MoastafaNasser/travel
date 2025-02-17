import 'package:flutter/material.dart';
import 'package:travel/constant/constant.dart';
import 'package:travel/widgets/build_list_Tile.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            padding: EdgeInsets.only(top: 20),
            alignment: Alignment.center,
            color: Theme.of(context).hintColor,
            child: Text(
              "دليلك السياحي ",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildlistTile(),
        ],
      ),
    );
  }

}