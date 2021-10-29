import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tik Tac Toe',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          title: Text(
            'Tic Tac Toe ',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.black87,
            ),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 12.0),
              child: Image.asset('assets/images/tic-tac-toe.png'),
            )
          ],
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top:120.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black87,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        height: 10.5,
                        width: 300.5,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:90.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black87,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      height: 10.5,
                      width: 300.5,
                    ),
                  ),
                  
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left:140.0,top:40.0),
                child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black87,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        height: 300.5,
                        width: 10.5,
                      ),
              ),

              Padding(
                padding: const EdgeInsets.only(left:265.0,top:40.0),
                child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black87,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        height: 300.5,
                        width: 10.5,
                      ),
              ),
            ],
          ),
          
        ),
      ),
    );
  }
}
// Padding(
//               padding:EdgeInsets.only(top:ScreenHeight / 80.0),
//               child:Container(
//               height:1.5,
//               width:ScreenWidth / 1.5,
//               color:Colors.grey,
//               ),
//               )

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatefulWidget {
//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   int redPlayer = 20;
//   int greenPlayer = 20;

//   bool isStarted = false;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Material App',
//       home: Scaffold(
//         floatingActionButton: redPlayer > 35 || greenPlayer > 35
//             ? FloatingActionButton(
//                 onPressed: () {
//                   setState(() {
//                     redPlayer = 20;
//                     greenPlayer = 20;
//                     isStarted = false;
//                   });
//                 },
//                 child: Text("Reset"),
//               )
//             : Text(""),
//         body: Container(
//             width: double.infinity,
//             height: double.infinity,
//             child: Stack(
//               children: [
//                 Column(
//                   children: [
//                     Expanded(
//                       flex: redPlayer,
//                       child: InkWell(
//                         onTap: () {
//                           setState(() {
//                             redPlayer += 1;
//                             greenPlayer -= 1;
//                           });
//                         },
//                         onDoubleTap: () {
//                           setState(() {
//                             redPlayer += 1;
//                             greenPlayer -= 1;
//                           });
//                         },
//                         child: Container(
//                           width: double.infinity,
//                           height: double.infinity,
//                           color: Colors.redAccent,
//                           child: redPlayer > 35
//                               ? Center(
//                                   child: Text(
//                                     "Red Won!!",
//                                     style: TextStyle(
//                                         fontSize: 30.0, color: Colors.white),
//                                   ),
//                                 )
//                               : Text(""),
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       flex: greenPlayer,
//                       child: InkWell(
//                         onTap: () {
//                           setState(() {
//                             greenPlayer += 1;
//                             redPlayer -= 1;
//                           });
//                         },
//                         onDoubleTap: () {
//                           setState(() {
//                             greenPlayer += 1;
//                             redPlayer -= 1;
//                           });
//                         },
//                         child: Container(
//                           width: double.infinity,
//                           height: double.infinity,
//                           color: Colors.greenAccent,
//                           child: greenPlayer > 35
//                               ? Center(
//                                   child: Text(
//                                     "Green Won!!",
//                                     style: TextStyle(
//                                         fontSize: 30.0, color: Colors.white),
//                                   ),
//                                 )
//                               : Text(""),
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//                 Container(
//                   child: isStarted == false
//                       ? Container(
//                           color: Colors.purple.withOpacity(0.5),
//                           child: Center(
//                             child: GestureDetector(
//                               onTap: () {
//                                 setState(() {
//                                   isStarted = true;
//                                 });
//                               },
//                               child: Card(
//                                 child: Padding(
//                                   padding: const EdgeInsets.all(60.0),
//                                   child: Text(
//                                     "Start",
//                                     style: TextStyle(fontSize: 28.0),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         )
//                       : Text(""),
//                 )
//               ],
//             )),
//       ),
//     );
//   }
// }
