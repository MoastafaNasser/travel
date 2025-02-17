
  import 'package:flutter/material.dart';
import 'package:travel/constant/constant.dart';

ListTile buildlistTile() {
    return ListTile(
          leading: Icon(
            Icons.card_travel,
            size: 20,
            color: (Colors.blue),
          ),
          title: Text("الرحلات " , style: kPrimaryStyle,),
        );
  }
