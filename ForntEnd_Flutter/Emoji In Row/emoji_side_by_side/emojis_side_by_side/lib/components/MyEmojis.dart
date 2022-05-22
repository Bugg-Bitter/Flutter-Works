// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyEmojis extends StatelessWidget {
  const MyEmojis({
    Key? key,
    required this.emojis,
  }) : super(key: key);

  final String emojis;

  @override
  Widget build(BuildContext context) {
    return Text(
      emojis,
      style: TextStyle(
        fontSize: 40.0,
      ),
    );
  }
}
