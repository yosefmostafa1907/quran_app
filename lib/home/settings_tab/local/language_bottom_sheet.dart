import 'package:flutter/material.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getSelectedLang('English'),
          SizedBox(
            height: 8,
          ),
          getUnSelectedLang('Arabic'),
        ],
      ),
    );
  }

  getSelectedLang(String selectedLang) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          selectedLang,
          style: TextStyle(fontSize: 22, color: Theme.of(context).primaryColor),
        ),
        Icon(Icons.check)
      ],
    );
  }

  getUnSelectedLang(String unSelectedLang) {
    return Text(
      unSelectedLang,
      style: TextStyle(fontSize: 22, color: Colors.black),
    );
  }
}
