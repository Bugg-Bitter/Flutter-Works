import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<List> getDatas() async {
  http.Response data =
      await http.get(Uri.parse("http://alquranbd.com/api/hadith"));
  return jsonDecode(data.body);
}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<List> LoadedData;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.LoadedData = getDatas();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
            child: Container(
              child: FutureBuilder(
                  future: this.LoadedData,
                  builder: (context, AsyncSnapshot<List> dataHandler) {
                    if (dataHandler.hasData) {
                      List? list_of_datas = dataHandler.data;
                      return ListView.builder(
                          itemCount: list_of_datas!.length,
                          itemBuilder: (BuildContext context, int i) {
                            return Card(
                              child: ListTile(
                                title: Text('${list_of_datas[i]["nameEnglish"]}'),
                              ),
                            );
                          });
                    } else
                      return CircularProgressIndicator();
                  }),
            )),
      ),
    );
  }
}
