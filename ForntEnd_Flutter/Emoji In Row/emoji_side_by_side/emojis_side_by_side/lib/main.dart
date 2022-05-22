import 'package:flutter/material.dart';
import 'components/MyEmojis.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String initialEmo = '😀';
  List<String> fakalist = [];

    List<String> emojis = [
      '😁',
      '😀',
      '😄',
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
      '😀',
      '🤭',
      '🤫',
      '🤥',
      '😶',
      '😐',
      '😑',
      '😬',
      '🙄',
      '😯',
      '😦',
      '😧',
      '😮',
      '😲',
      '🥱',
      '😴',
      '🤤',
      '😪',
      '😮‍💨',
      '😵',
      '😵‍💫',
      '🤐',
      '🥴',
      '🤢',
      '🤮',
      '🤧',
      '😷',
      '🤒',
      '🤕',
      '🤑',
      '🤠',
      '😈',
      '👿',
      '👹',
      '👺',
    ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('😛  Emojis  😛'),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: 8,
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 6,
                      ),
                      itemCount: fakalist.length,
                      itemBuilder: (BuildContext context, int i) {
                        return MyEmojis(emojis: fakalist[i]);
                      }),
                ),
              ),
              Expanded(
                flex: 3,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                      mainAxisSpacing: 3,
                      crossAxisSpacing: 3,
                    ),
                    itemCount: emojis.length,
                    itemBuilder: (BuildContext context, int i) {
                      return buildEmojis(emojis[i]);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }


  Widget buildEmojis(String Emo) => InkWell(
    onTap: (){
      setState(() {
        fakalist.add(Emo);
      });

    },
    child: Padding(
      padding: const EdgeInsets.all(7.0),
      child: Container(
       decoration: BoxDecoration(
         color: Colors.black87,
         shape: BoxShape.rectangle,
         borderRadius: BorderRadius.all(Radius.circular(16.0),),
       ),
       child: GridTile(
         child: Center(child: Text('$Emo',textAlign: TextAlign.center,style: TextStyle(
           fontSize: 30.0,
         ),),),
       ),
      ),
    ),
  );
}
