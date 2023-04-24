import 'package:flutter/material.dart';

class Headline extends StatelessWidget {
  Headline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 15, right: 50.0),
      child: Text(
        'What would you like to order today?',
        style: TextStyle(fontSize: 16.0),
      ),
    );
  }
}
