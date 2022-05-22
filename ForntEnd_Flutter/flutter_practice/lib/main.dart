import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int spiner = 0;
  String s = "0";
  List<String> emojis = [
    '😀',
    '😄',
    '😁',
    '😆',
    '😅',
    '😂',
    '🤣',
    '🥲',
    '☺',
    '😊',
    '😇',
    '🙂',
    '🙃',
    '😉',
    '😌',
    '😍',
    '🥰',
    '😘',
    '😗',
    '😙',
    '😚',
    '😋',
    '😛',
    '😝',
    '😜',
    '🤪',
    '🤨',
    '🧐',
    '🤓',
    '😎',
    '🥸',
    '🤩',
    '🥳',
    '😏',
    '😒',
    '😞',
    '😔',
    '😟',
    '😕',
    '🙁',
    '☹',
    '😣',
    '😖',
    '😫',
    '😩',
    '🥺',
    '😢',
    '😭',
    '😤',
    '😠',
    '😡',
    '🤬',
    '🤯',
    '😳',
    '🥵',
    '🥶',
    '😶‍🌫',
    '😱',
    '😨',
    '😰',
    '😥',
    '😓',
    '🤗',
  ];

  void Ups() {
    setState(() {
      if (spiner > emojis.length)
        spiner = 0;
      else
        ++spiner;
    });
  }

  void Downs() {

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 13.0, right: 5.0),
              child: Text(
                '😺',
                style: TextStyle(fontSize: 30.0),
              ),
            ),
          ],
          centerTitle: true,
          title: Text(
            'Emojis ☯',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        drawer: Drawer(),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '${emojis[spiner]}',
                style: TextStyle(
                  fontSize: 100.0,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Container(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [


                /// Decrease
                FloatingActionButton(
                  onPressed: (){
                    setState(() {
                      if (spiner != 0) --spiner;
                    });
                  },
                  child: Icon(Icons.remove),
                ),


                /// Increase
                FloatingActionButton(
                  onPressed: Ups,
                  child: Icon(Icons.add),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
