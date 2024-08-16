import 'package:flutter/material.dart';
import 'package:islami/home/ahadeth_tab/hadeth_model.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routName = 'Hadeth-Details';

  @override
  Widget build(BuildContext context) {
    HadethItem args = ModalRoute.of(context)?.settings.arguments as HadethItem;
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
          title: Text(args.title),
        ),
        body: Container(
          height: double.infinity,
          child: Card(
            margin: EdgeInsets.all(18),
            color: Theme.of(context).cardTheme.color,
            child: Container(
              padding: EdgeInsets.all(18),
              child: SingleChildScrollView(
                child: Text(args.content,
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: Theme.of(context).textTheme.displaySmall),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
