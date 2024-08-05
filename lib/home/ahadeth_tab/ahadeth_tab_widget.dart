import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/home/ahadeth_tab/hadeth_model.dart';
import 'package:islami/home/ahadeth_tab/hadeth_title_widget.dart';

class AhadethTabWidget extends StatefulWidget {
  @override
  State<AhadethTabWidget> createState() => _AhadethTabWidgetState();
}

class _AhadethTabWidgetState extends State<AhadethTabWidget> {
  List<HadethItem> allHadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allHadeth.isEmpty) loadHadethFile();
    return Container(
      child: Column(
        children: [
          Expanded(flex: 1, child: Image.asset('assets/images/hadeth_bg.png')),
          Container(
              padding: EdgeInsets.symmetric(vertical: 8),
              margin: EdgeInsets.symmetric(horizontal: 66),
              alignment: Alignment.center,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.symmetric(
                      horizontal:
                          BorderSide(color: Theme.of(context).primaryColor))),
              child: Text(
                'Ahadeth',
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              )),
          Expanded(
            flex: 3,
            child: allHadeth.isEmpty
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.separated(
                    itemBuilder: (context, index) =>
                        HadethTitleWidget(hadethItem: allHadeth[index]),
                    separatorBuilder: (context, index) => Container(
                          color: Theme.of(context).primaryColor,
                          width: double.infinity,
                          height: 2,
                          margin: EdgeInsets.symmetric(horizontal: 66),
                        ),
                    itemCount: allHadeth.length),
          )
        ],
      ),
    );
  }

  void loadHadethFile() async {
    String fileContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');

    List<String> ahadethList = fileContent.trim().split('#');
    for (int i = 0; i < ahadethList.length; i++) {
      String singleHadeth = ahadethList[i];
      List<String> hadethLines = singleHadeth.trim().split('\n');
      String hadethTitle = hadethLines[0];
      hadethLines.removeAt(0);
      //=List<String>hadethContent=hadethLines;
      String hadethContent = hadethLines.join('\n');

      HadethItem h = HadethItem(title: hadethTitle, content: hadethContent);
      allHadeth.add(h);
      setState(() {});
    }
  }
}
