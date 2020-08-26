import 'package:flutter/material.dart';

Widget profile(theme, size) {
  return Card(
    color: theme.accentColor,
    elevation: 10.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Padding(
      padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
      child: ListTile(
        leading: CircleAvatar(
          radius: size.height * 0.07 / 2,
          backgroundImage: AssetImage("assets/images/profile.jpg"),
        ),
        title: Text(
          "John Doe",
          style: theme.textTheme.subtitle1.copyWith(color: Colors.white),
        ),
        trailing: IconButton(
            icon: Icon(
              Icons.edit,
              color: Colors.white,
            ),
            onPressed: () {}),
      ),
    ),
  );
}
