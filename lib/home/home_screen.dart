import 'package:flutter/material.dart';
import 'package:islami/home/ahadeth_tab/ahadeth_tab_widget.dart';
import 'package:islami/home/quran_tab/quran_tab_widget.dart';
import 'package:islami/home/radio_tab/radio_tab_widget.dart';
import 'package:islami/home/settings_tab/settings_tab_widget.dart';
import 'package:islami/home/tasbeh_tab/tasbeh_tab_widget.dart';

class HomeScreen extends StatefulWidget {
  static const String routName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentindex = 0;

  List<Widget> tabs = [
    QuranTabWidget(),
    AhadethTabWidget(),
    TasbehTabWidget(),
    RadioTabWidget(),
    SettingsTabWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/main_background.png')),
      ),
      child: Scaffold(
          //امااخد object من ال theme
          //backgroundColor: Colors.red,
          // backgroundColor: Theme.of(context).scaffoldBackgroundColor(AssetImage(assetName)),
          appBar: AppBar(title: Text('Islami')),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentindex,
            onTap: (index) {
              currentindex = index;
              setState(() {});
            },
            backgroundColor: Color(0xFFB7935F),
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFFB7935F),
                  icon: ImageIcon(AssetImage('assets/images/quran_ic.png')),
                  label: 'quran'),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFFB7935F),
                  icon: ImageIcon(AssetImage('assets/images/ahadeth_ic.png')),
                  label: ''),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFFB7935F),
                  icon: ImageIcon(AssetImage('assets/images/sebha_ic.png')),
                  label: ''),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFFB7935F),
                  icon: ImageIcon(AssetImage('assets/images/radio_ic.png')),
                  label: ''),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFFB7935F),
                  icon: Icon(Icons.settings),
                  label: ''),
            ],
          ),
          body: tabs[currentindex]),
    );
  }
}
