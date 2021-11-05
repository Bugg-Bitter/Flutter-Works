// ignore_for_file: file_names

import 'package:flutter/material.dart';

class InputContainer extends StatelessWidget {
  const InputContainer({
    Key? key,
    required this.ScreenWidth,
    required this.inputText,
    required this.ScreenHeight,
  }) : super(key: key);

  final double ScreenWidth;
  final TextEditingController inputText;
  final double ScreenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenWidth / 1.2,
      child: TextField(
        cursorHeight: 40.0,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 24.0,
        ),
        controller: inputText,
        decoration: const InputDecoration(
          labelText: 'Paste the data',
          labelStyle: TextStyle(
            fontSize: 30.0,
            color: Color(0xff4B6587),
          ),
          contentPadding:
              EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          enabledBorder: OutlineInputBorder(
            //  gapPadding: 30.0,
            borderSide: BorderSide(color: Colors.white54, width: 1.5),
          ),
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.text,
      ),
    );
  }
}

