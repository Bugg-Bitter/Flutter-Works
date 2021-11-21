import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    bool isOpen = false;
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child:Expanded(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              ExpansionTile(
                title: Text('This is an expansion tile'),
              ),
              ExpansionTile(
                
                title: Text('This is an expansion tile'),
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        isOpen = !isOpen;
                        initiallyExpanded:isOpen;
                      });
                    },
                    child: ListTile(
                      title: Text('One',style: TextStyle(
                        fontSize: 20.0,
                      ),),
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text('This is an expansion tile'),
              ),
              ExpansionTile(
                title: Text('This is an expansion tile'),
              ),
            ],
          ),
        ),
        ),
      ),
    );
  }
}