import 'package:flutter/material.dart';
import 'package:revise_fire/core/utils/mycolor.dart';

class Mytheme {
  var apptheme = ThemeData(
    appBarTheme: AppBarTheme(
      color: Mycolor().Appbarcolor,
    ),
    //------>elevatedbutton
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Mycolor().elevatedbuttoncolor),
      foregroundColor: MaterialStateProperty.all(Mycolor().Textcolor),
    )), //---------------->dropdownmenubutton
    dropdownMenuTheme: DropdownMenuThemeData(
        menuStyle: MenuStyle(
            backgroundColor:
                MaterialStateProperty.all(Mycolor().Primarycolor))),
    //------------------>snackbar
    snackBarTheme: SnackBarThemeData(
        backgroundColor: Mycolor().Primarycolor,
        contentTextStyle: TextStyle(color: Mycolor().Textcolor)),
    //----------------->radio
    radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.all(Mycolor().Textcolor)),
    //----------------->texttheme
    textTheme: TextTheme(
        headlineSmall: TextStyle(color: Mycolor().Textcolor, fontSize: 15),
        headlineMedium: TextStyle(
            color: Mycolor().Textcolor,
            fontSize: 30,
            fontWeight: FontWeight.bold)),
    //----------------->texttheme
    scaffoldBackgroundColor: Mycolor().Scaffoldcolor,
    //----------------->text button
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(Mycolor().Textbuttoncolor),
            foregroundColor: MaterialStateProperty.all(
              Mycolor().Textbuttoncolor,
            ))),
    //---------------->
  );
}
