import 'package:flutter/material.dart';

Widget profile(theme, size) {
  return Container(
    alignment: Alignment.centerLeft,
    height: size.height*0.09,
    child: Card(
      semanticContainer: true,
      color: theme.accentColor,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ListTile(
        leading: CircleAvatar(
          radius: size.height * 0.06 / 2,
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
