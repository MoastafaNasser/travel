import 'package:flutter/material.dart';
import 'package:travel/constant/constant.dart';

Widget buildlistTile(
    String title, IconData icon, GestureTapCallback? onTapLink) {
  return ListTile(
    leading: Icon(
      icon,
      size: 20,
      color: (Colors.blue),
    ),
    title: Text(
      title,
      style: kPrimaryStyle,
    ),
    onTap: onTapLink,
  );
}
