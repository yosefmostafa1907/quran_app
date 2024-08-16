import 'package:flutter/material.dart';

class MyThemeData {
  static Color lightPrimaryColor = Color(0xffB7935F);
  static Color darkPrimaryColor = Color(0xff141A2E);
  static Color yellowColor = Color(0xffFACC1D);

  static ThemeData lightTheme = ThemeData(
      primaryColor: lightPrimaryColor,
      cardTheme: CardTheme(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
        elevation: 18,
      ),
      colorScheme: ColorScheme.fromSeed(
        seedColor: lightPrimaryColor,
        primary: lightPrimaryColor,
        onPrimary: Color(0xffffffff),
        secondary: Color(0x79B7935f),
        onSecondary: Colors.black,
      ),
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          )),
      scaffoldBackgroundColor: Colors.transparent,
      dividerColor: lightPrimaryColor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: lightPrimaryColor,
          selectedItemColor: Colors.black,
          selectedIconTheme: IconThemeData(color: Colors.black, size: 36),
          unselectedItemColor: Colors.black,
          unselectedIconTheme: IconThemeData(color: Colors.white, size: 36)),
      textTheme: TextTheme(
          titleMedium: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          bodyMedium: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          displaySmall: TextStyle(fontSize: 20, color: Colors.black),
          labelMedium: TextStyle(
              color: lightPrimaryColor,
              fontSize: 26,
              fontWeight: FontWeight.bold)));
  static ThemeData darkTheme = ThemeData(
    primaryColor: darkPrimaryColor,
    cardTheme: CardTheme(
      color: darkPrimaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
      elevation: 18,
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: darkPrimaryColor,
      primary: darkPrimaryColor,
      onPrimary: Color(0xffffffff),
      secondary: yellowColor,
      onSecondary: Colors.black,
    ),
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleTextStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        )),
    scaffoldBackgroundColor: Colors.transparent,
    dividerColor: yellowColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: darkPrimaryColor,
        selectedItemColor: yellowColor,
        selectedIconTheme: IconThemeData(color: yellowColor, size: 36),
        unselectedItemColor: Colors.white,
        unselectedIconTheme: IconThemeData(color: Colors.white, size: 36)),
    textTheme: TextTheme(
        titleMedium: TextStyle(
            color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        bodyMedium: TextStyle(
            color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        displaySmall: TextStyle(fontSize: 20, color: Colors.white),
        labelMedium: TextStyle(
            color: yellowColor, fontSize: 26, fontWeight: FontWeight.bold)),
  );
}
