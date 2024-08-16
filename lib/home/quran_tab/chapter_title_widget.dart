import 'package:flutter/material.dart';
import 'package:islami/home/quran_tab/chapter_details_screen.dart';

class ChapterTitleWidget extends StatelessWidget {
  ChapterTitleWidget({required this.chapterTitle, required this.index});

  String chapterTitle;
  int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, ChapterDetailsScreen.routname,
            arguments:
                ChapterDetailsArgs(chapterTitle: chapterTitle, index: index));
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8),
        alignment: Alignment.center,
        child: Text(
          chapterTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}

class ChapterDetailsArgs {
  String chapterTitle;
  int index;

  ChapterDetailsArgs({required this.chapterTitle, required this.index});
}
