// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';

class OutputContainer extends StatelessWidget {
  const OutputContainer({
    Key? key,
    required this.ScreenHeight,
    required this.ScreenWidth,
    required this.fina,
  }) : super(key: key);

  final double ScreenHeight;
  final double ScreenWidth;
  final String fina;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenHeight / 2,
      width: ScreenWidth / 1.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: Colors.amberAccent,
          width: 1.5,
        ),
      ),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Text(
            fina,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: const Color(0xff4B6587),
              fontSize: ScreenWidth / 16.0,
            ),
          )
        ],
      ),
    );
  }
}