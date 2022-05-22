import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(Dicer());
} 

class Dicer extends StatefulWidget {
  const Dicer({Key? key}) : super(key: key);
  @override
  State<Dicer> createState() => _DicerState();
}

class _DicerState extends State<Dicer> {
  var randomNum = Random();
  int min = 1, max = 6;
  int dice = 1;
  Image si = Image.asset('assets/images/dice_one.png', height: 200.0);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: si,
              ),
              Container(
                height: 50,
                width: 100,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      // For get the dice within range....
                      dice = min + randomNum.nextInt(max - min);
                      switch (dice) {
                        case 1:
                          {
                            si = Image.asset(
                              'assets/images/dice_one.png',
                              height: 200.0,
                            );
                          }
                          break;

                        case 2:
                          {
                            si = Image.asset(
                              'assets/images/dice_two.png',
                              height: 200.0,
                            );
                          }
                          break;

                        case 3:
                          {
                            si = Image.asset(
                              'assets/images/dice_three.png',
                              height: 200.0,
                            );
                          }
                          break;

                        case 4:
                          {
                            si = Image.asset(
                              'assets/images/dice_four.png',
                              height: 200.0,
                            );
                          }
                          break;

                        case 5:
                          {
                            si = Image.asset(
                              'assets/images/dice_five.png',
                              height: 200.0,
                            );
                          }
                          break;

                        case 6:
                          {
                            si = Image.asset(
                              'assets/images/dice_six.png',
                              height: 200.0,
                            );
                          }
                          break;
                      }
                    });
                  },
                  child: Text(
                    'Roll',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
