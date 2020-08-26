import 'package:flutter/material.dart';

Widget changes(theme) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      margin: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 0,
      ),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.lock_outline,
              color: theme.accentColor,
            ),
            title: Text("Change Password", style: theme.textTheme.subtitle1),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              color: theme.buttonColor,
            ),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.translate,
              color: theme.accentColor,
            ),
            title: Text("Change Language"),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              color: theme.buttonColor,
            ),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.location_on,
              color: theme.accentColor,
            ),
            title: Text("Change Location"),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              color: theme.buttonColor,
            ),
            onTap: () {},
          ),
        ],
      ),
    ),
  );
}
