import 'package:flutter/material.dart';

class verseWidget extends StatelessWidget {
  verseWidget({super.key, required this.verse});

  String verse;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        child: Text(
          verse,
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 26,
            color: Colors.black,
          ),
        ));
  }
}
