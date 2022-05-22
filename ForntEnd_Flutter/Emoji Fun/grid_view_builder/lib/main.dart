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
  String situation = "😀";
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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          title: Text(
            'GridView.Builder',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Icon(
                Icons.sports_esports_outlined,
                size: 40.0,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Text('Pressed : $situation',style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.w600,
              ),),
              Expanded(child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                    mainAxisSpacing: 3,
                    crossAxisSpacing: 3,
                  ),
                  itemCount: emojis.length,
                  itemBuilder: (BuildContext context, int i) {
                    return buildEmojis(emojis[i]);
                  }
              ),)
            ],
          ),
        ),
      ),
    );
  }


  Widget buildEmojis(String Emo) => InkWell(
    onTap: (){
      setState(() {
        situation = Emo;
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
           fontSize: 70.0,
         ),
         ),
         ),
       ),
      ),
    ),
  );
}
