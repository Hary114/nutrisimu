import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:nutrisimu/pages/detailbuah.dart';

class Buah extends StatefulWidget {
  static const String routeName = "/listbuah";
  @override
  _BuahState createState() => new _BuahState();
}
class _BuahState extends State<Buah> {
  Future<List> getData() async {
    final response = await http.get("https://buah-json.000webhostapp.com/buah.json");
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
              ? new ListBuah(
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

class ListBuah extends StatelessWidget {
  final List list;
  ListBuah({this.list});

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
                builder: (BuildContext context)=> new DetailBuah(list:list , index: i,)
              )
            ),
            child: new Card(
              child: new ListTile(
                title: new Text(list[i]['buah']),
              ),
            ),
          ),
        );
      },
    );
  }
}
