// ignore_for_file: non_constant_identifier_names, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'components/InputContainer.dart';
import 'components/Outputcontainer.dart';

void main() {
  runApp(const TextEditor());
}

class TextEditor extends StatefulWidget {
  const TextEditor({Key? key}) : super(key: key);

  @override
  State<TextEditor> createState() => _TextEditorState();
}

class _TextEditorState extends State<TextEditor> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartBit(),
    );
  }
}

class StartBit extends StatefulWidget {
  const StartBit({Key? key}) : super(key: key);

  @override
  State<StartBit> createState() => _StartBitState();
}

class _StartBitState extends State<StartBit> {
  TextEditingController inputText = TextEditingController();

  String? inputsInString;

  var ss;

  String fina = "NewLines Outputs";

  int i = 0;

  List<String> outputs = [];

  void logics() {
    String inpu = inputsInString!;
    ss = inpu.split('। ');
    outputs = [];
    ss.forEach((e) => outputs.add("${e}।"));
    fina = outputs.join('\n');
    Clipboard.setData(ClipboardData(text: fina));
  }

  @override
  Widget build(BuildContext context) {
    double ScreenHeight = MediaQuery.of(context).size.height;
    double ScreenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        //resizeToAvoidBottomInset: false,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xff1F1D36),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                /// Newline Added Container
                Padding(
                  padding: EdgeInsets.only(top: ScreenHeight / 30.0, bottom: ScreenHeight / 20.0),
                  child: OutputContainer(
                      ScreenHeight: ScreenHeight,
                      ScreenWidth: ScreenWidth,
                      fina: fina),
                ),

                /// textField to paste data and copy the new lines data
                Padding(
                    padding: EdgeInsets.only(bottom: ScreenHeight / 10.0),
                    child: InputContainer(
                        ScreenHeight: ScreenHeight,
                        ScreenWidth: ScreenWidth,
                        inputText: inputText)),

                /// Extract the Text to ClipBoardss
                Padding(
                  padding: EdgeInsets.only(bottom:ScreenHeight /16.0),
                  child: Container(
                    height: ScreenHeight / 9.0,
                    width: ScreenWidth / 1.7,
                    child: ElevatedButton.icon(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xff4EA0AE)),
                      ),
                      onPressed: () {
                        setState(() {
                          inputsInString = inputText.text;
                          logics();
                          inputText.clear();
                        });
                      },
                      label: Text(
                        'Extract Data',
                        style: TextStyle(
                          fontSize: ScreenWidth / 17,
                        ),
                      ),
                      icon: Image.asset('images/newline.png',
                          height: ScreenHeight / 19.0, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
