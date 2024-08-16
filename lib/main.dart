import 'package:flutter/material.dart';
import 'package:islami/home/ahadeth_tab/hadeth_details/hadeth_details_screen.dart';
import 'package:islami/home/quran_tab/chapter_details_screen.dart';
import 'package:islami/style/my_theme_data.dart';

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
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routName: (context) => HomeScreen(),
        ChapterDetailsScreen.routname: (context) => ChapterDetailsScreen(),
        HadethDetailsScreen.routName: (context) => HadethDetailsScreen(),
      },
      initialRoute: HomeScreen.routName,
    );
  }
}
