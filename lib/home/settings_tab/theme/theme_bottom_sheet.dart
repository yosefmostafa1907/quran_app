import 'package:flutter/material.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          gitSelectedItem('Light'),
          SizedBox(
            height: 8,
          ),
          gitUnSelectedItem('Dark'),
        ],
      ),
    );
  }

  Widget gitSelectedItem(String selectedTheme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          selectedTheme,
          style: TextStyle(fontSize: 22, color: Theme.of(context).primaryColor),
        ),
        Icon(Icons.check)
      ],
    );
  }

  Widget gitUnSelectedItem(String unselectedTheme) {
    return Text(
      unselectedTheme,
      style: TextStyle(fontSize: 22, color: Theme.of(context).primaryColor),
    );
  }
}
