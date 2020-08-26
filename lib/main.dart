import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task/setting_screen/settings.dart';
import 'package:task/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  statusBarColor:  Color(0xFFbdbdbd),
  systemNavigationBarColor: Colors.black
    ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      title: 'Flutter Task',
      home: Settings(),
    );
  }
}

