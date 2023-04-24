import 'package:flutter/material.dart';

class Headline extends StatelessWidget {
  const Headline({super.key, required this.headline});
  final String headline;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, right: 50.0),
      child: Text(
        headline,
        style: const TextStyle(fontSize: 16.0),
      ),
    );
  }
}
