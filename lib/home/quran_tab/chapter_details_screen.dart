import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/home/quran_tab/chapter_title_widget.dart';
import 'package:islami/home/quran_tab/verse_widget.dart';

class ChapterDetailsScreen extends StatefulWidget {
  static const String routname = 'ChapterDetailsScreen';

  @override
  State<ChapterDetailsScreen> createState() => _ChapterDetailsScreenState();
}

class _ChapterDetailsScreenState extends State<ChapterDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    ChapterDetailsArgs args =
        ModalRoute.of(context)?.settings.arguments as ChapterDetailsArgs;
    if (verses.isEmpty) readFile(args.index);

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(ThemeMode == ThemeMode.light
                ? 'assets/images/main_background.png'
                : 'assets/images/main_bg_dark.png')),
      ),
      child: Scaffold(
          appBar: AppBar(
            title: Text(args.chapterTitle),
          ),
          body: verses.isEmpty
              ? Center(child: CircularProgressIndicator())
              : Card(
                  color: Theme.of(context).cardTheme.color,
                  child: ListView.separated(
                      itemBuilder: (context, index) =>
                          verseWidget(verse: verses[index]),
                      separatorBuilder: (context, index) {
                        return Container(
                          color: Theme.of(context).dividerColor,
                          width: double.infinity,
                          height: 2,
                        );
                      },
                      itemCount: verses.length),
                )),
    );
  }

  void readFile(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> suraLines = fileContent.split('/n');
    verses = suraLines;

    setState(() {});
  }
}
