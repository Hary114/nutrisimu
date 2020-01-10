import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:nutrisimu/pages/detailsayur.dart';

class SayurPages extends StatefulWidget {
  static const String routeName = "/listsayur";
  @override
  _SayurPagesState createState() => new _SayurPagesState();
}
class _SayurPagesState extends State<SayurPages> {
  Future<List> getData() async {
    final response = await http.get("https://buah-json.000webhostapp.com/sayur.json");
    return json.decode(response.body);
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
       body: new FutureBuilder<List>(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);

          return snapshot.hasData
              ? new ListSayur(
                  list: snapshot.data,
                )
              : new Center(
                  child: new CircularProgressIndicator(),
                );
        },
      ),
    );
  }
}

class ListSayur extends StatelessWidget {
  final List list;
  ListSayur({this.list});

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: list == null ? 0 : list.length,
      itemBuilder: (context, i) {
        return new Container(
          padding: const EdgeInsets.all(10.0),
          child: new GestureDetector(
            onTap: ()=>Navigator.of(context).push(
              new MaterialPageRoute(
                builder: (BuildContext context)=> new DetailSayur(list:list , index: i,)
              )
            ),
            child: new Card(
              child: new ListTile(
                title: new Text(list[i]['sayur']),
              ),
            ),
          ),
        );
      },
    );
  }
}
