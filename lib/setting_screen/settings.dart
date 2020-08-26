import 'package:flutter/material.dart';
import 'package:task/setting_screen/changes.dart';
import 'package:task/setting_screen/profile.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool receivednotification = true;
  bool receivednewsletter = false;
  bool receivedoffernotification = true;
  bool receivedappupdate = true;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        //***********App Bar ********************/
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
          ),
          title: Text(
            "Settings",
          ),
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            //*********** Profile ********************/
            profile(theme, size),

            //*********** Changes ********************/
            changes(theme),

            //*************** Notification settings ********************/
            SizedBox(
              height: size.height * 0.03,
            ),

            Text(
              "Notification Settings",
              style: theme.textTheme.headline1,
            ),
            SwitchListTile(
              inactiveThumbColor: theme.buttonColor,
              inactiveTrackColor: theme.buttonColor,
              activeColor: theme.accentColor,
              value: receivednotification,
              title: Text(
                "Received notification",
                style: !receivednotification
                    ? theme.textTheme.subtitle1
                        .copyWith(color: theme.buttonColor)
                    : null,
              ),
              onChanged: (val) {
                setState(() {
                  receivednotification = val;
                });
              },
            ),
            SwitchListTile(
              inactiveThumbColor: theme.buttonColor,
              inactiveTrackColor: theme.buttonColor,
              activeColor: theme.accentColor,
              value: receivednewsletter,
              title: Text(
                "Recived newsletter",
                style: !receivednewsletter
                    ? theme.textTheme.subtitle1
                        .copyWith(color: theme.buttonColor)
                    : null,
              ),
              onChanged: (val) {
                setState(() {
                  receivednewsletter = val;
                });
              },
            ),
            SwitchListTile(
              inactiveThumbColor: theme.buttonColor,
              inactiveTrackColor: theme.buttonColor,
              activeColor: theme.accentColor,
              value: receivedoffernotification,
              title: Text(
                "Recived offer notification",
                style: !receivedoffernotification
                    ? theme.textTheme.subtitle1
                        .copyWith(color: theme.buttonColor)
                    : null,
              ),
              onChanged: (val) {
                setState(() {
                  receivedoffernotification = val;
                });
              },
            ),
            SwitchListTile(
              activeColor: theme.buttonColor,
              activeTrackColor: theme.buttonColor,
              inactiveThumbColor: theme.accentColor,
              inactiveTrackColor: theme.accentColor,
              value: receivedappupdate,
              title: Text(
                "Recived App update",
                style: receivedappupdate
                    ? theme.textTheme.subtitle1
                        .copyWith(color: theme.buttonColor)
                    : null,
              ),
              onChanged: (val) {
                setState(() {
                  receivedappupdate = val;
                });
              },
            ),
            //***************  FloatingActionButton ********************/
            Container(
              alignment: Alignment.bottomLeft,
              child: FloatingActionButton(
                onPressed: () {},
                child: Icon(
                  Icons.power_settings_new,
                  color: theme.cardColor,
                  size: 30.0,
                ),
                backgroundColor: theme.accentColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
