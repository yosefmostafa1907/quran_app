import 'package:flutter/material.dart';
import 'package:islami/home/quran_tab/chapter_details_screen.dart';

import 'home/home_screen.dart';

void main() {
  runApp(const MyAppp());
}

class MyAppp extends StatelessWidget {
  const MyAppp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xffB7935F),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xffB7935F),
          primary: Color(0xffB7935F),
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
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Color(0xFFB7935F),
            selectedItemColor: Colors.black,
            selectedIconTheme: IconThemeData(color: Colors.black, size: 36),
            unselectedItemColor: Colors.black,
            unselectedIconTheme: IconThemeData(color: Colors.white, size: 36)),
      ),
      darkTheme: ThemeData(
        primaryColor: Color(0xff141A2E),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xff141A2E),
          primary: Color(0xff141A2E),
          onPrimary: Color(0xffffffff),
          secondary: Color(0xffFACC1D),
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
              color: Colors.black,
            )),
        scaffoldBackgroundColor: Colors.transparent,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Color(0xFFB7935F),
            selectedItemColor: Colors.black,
            selectedIconTheme: IconThemeData(color: Colors.black, size: 36),
            unselectedItemColor: Colors.black,
            unselectedIconTheme: IconThemeData(color: Colors.white, size: 36)),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routName: (context) => HomeScreen(),
        ChapterDetailsScreen.routname: (context) => ChapterDetailsScreen()
      },
      initialRoute: HomeScreen.routName,
    );
  }
}
