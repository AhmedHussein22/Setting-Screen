import 'package:flutter/material.dart';

ThemeData theme() {
  Color white = Colors.white;
  Color black = Colors.black;
  Color violet = Color(0xFF9c27b3);
  Color offwhite = Color(0xFFeeeeee);
  Color gray = Color(0xFFbdbdbd);
  Color blue = Color(0xFF3f50b9);

  return ThemeData(
    scaffoldBackgroundColor: offwhite,
    primaryColor: offwhite,
    accentColor:violet,
    cardColor: white,
    buttonColor: gray,
    iconTheme: IconThemeData(
      color: violet,
    ),
    appBarTheme: AppBarTheme(
      centerTitle: false,
      color: offwhite,
      textTheme: TextTheme(
        headline6: TextStyle(color: black, fontWeight: FontWeight.bold,fontSize: 20),
      ),
      elevation: 0.0,
      iconTheme: IconThemeData(
        color: black,
      ),
    ),
    dividerTheme: DividerThemeData(
      color: gray,
      endIndent: 10.0,
      indent: 10.0,
      thickness: 1.0,
    ),



    textTheme: TextTheme(
      headline1: TextStyle(color: blue, fontWeight: FontWeight.bold,fontSize: 20),
      subtitle1: TextStyle(color: black,fontSize: 17),
    ),
  );
}
