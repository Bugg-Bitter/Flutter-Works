import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isX = true;
  int tapCounter = 0;
  List<String> _Tiles = ['', '', '', '', '', '', '', '', ''];
  String? winnerIs;
  int winColor = 0;
  int check = 0;
  int allTiles = 0;
  int X = 0;
  int O = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        backgroundColor:Color(0XFF212845),  
          appBar: AppBar(
            title: const Text('Tic Tac Toe'),
            centerTitle: true,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Image.asset('assets/images/tic-tac-toe.png'),
              )
            ],
          ),
          body: Column(
            children: [
              Expanded(
                flex: 3,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemCount: 9,
                  itemBuilder: (context, i) {
                    return GestureDetector(
                      onTap: () {
                        _CurrentTile(i);
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black87),
                        ),
                        child: Center(
                          child: Text(
                            _Tiles[i],
                            style: const TextStyle(
                              fontSize: 100.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                flex: 1,
                child: (check == 1)
                    ? Text(
                        'Winner is $winnerIs',
                        style: TextStyle(
                          fontSize: 75.0,
                        ),
                      )
                    : (tapCounter == 9) && (check == 0)
                        ? Text(
                            'Its a Draw !',
                            style: TextStyle(
                              fontSize: 55.0,
                            ),
                          )
                        : Text(''),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom:20.0,right:25.0),
                    child: Text(
                      'X = $X',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0XFFF8D320),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: SizedBox(
                      height: 40.0,
                      width: 100.0,
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              for (int i = 0; i < 9; i++) _Tiles[i] = '';
                              tapCounter = 0;
                              isX = true;
                              winColor = 0;
                              winnerIs = null;
                              check = 0;
                              
                            });
                          },
                          child: Text(
                            'Reset',
                            style: TextStyle(
                              fontSize: 25.0,
                            ),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom:20.0,right:20.0),
                    child: Text(
                      'O = $O',
                      style: TextStyle(
                        fontSize: 40.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }

  void _CurrentTile(int i) {
    setState(() {
      tapCounter++;
      if (isX && _Tiles[i] == '')
        _Tiles[i] = 'X';
      else if (!isX && _Tiles[i] == '') _Tiles[i] = 'O';
      isX = !isX;
      winner();
    });
  }

  void winner() {
    /// First Row
    if (_Tiles[0] == _Tiles[1] && _Tiles[1] == _Tiles[2] && _Tiles[0] != '') {
      winnerIs = _Tiles[0];
      check++;
      XorO(winnerIs);
    }

    /// Second Row
    else if (_Tiles[3] == _Tiles[4] &&
        _Tiles[3] == _Tiles[5] &&
        _Tiles[3] != '') {
      winnerIs = _Tiles[3];
      check++;
      XorO(winnerIs);
    }

    /// Third Row
    else if (_Tiles[6] == _Tiles[7] &&
        _Tiles[6] == _Tiles[8] &&
        _Tiles[6] != '') {
      winnerIs = _Tiles[6];
      check++;
      XorO(winnerIs);
    }

    /// First Column
    else if (_Tiles[0] == _Tiles[3] &&
        _Tiles[0] == _Tiles[6] &&
        _Tiles[0] != '') {
      winnerIs = _Tiles[0];
      check++;
      XorO(winnerIs);
    }

    /// Second Column
    else if (_Tiles[1] == _Tiles[4] &&
        _Tiles[1] == _Tiles[7] &&
        _Tiles[1] != '') {
      winnerIs = _Tiles[1];
      check++;
      XorO(winnerIs);
    }

    /// Third Column
    else if (_Tiles[2] == _Tiles[5] &&
        _Tiles[2] == _Tiles[8] &&
        _Tiles[2] != '') {
      winnerIs = _Tiles[2];
      check++;
      XorO(winnerIs);
    }

    /// Left Diagonal
    else if (_Tiles[0] == _Tiles[4] &&
        _Tiles[0] == _Tiles[8] &&
        _Tiles[0] != '') {
      winnerIs = _Tiles[0];
      check++;
      XorO(winnerIs);
    }

    /// Right Diagonal
    else if (_Tiles[2] == _Tiles[4] &&
        _Tiles[2] == _Tiles[6] &&
        _Tiles[2] != '') {
      winnerIs = _Tiles[2];
      check++;
      XorO(winnerIs);
    }

  }


  void XorO(String? value){
    value == 'X'?  X++ : O++;

  }
}