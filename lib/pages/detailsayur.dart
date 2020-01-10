import 'package:flutter/material.dart';

class DetailSayur extends StatefulWidget{
   List list; 
   int index;
   DetailSayur({this.index, this.list});
   @override 
   _DetailSayurState createState() => new _DetailSayurState();
}

class _DetailSayurState extends State<DetailSayur>{
  @override 
  Widget build(BuildContext context){
    return new Scaffold(
      body: new ListView(
              children: <Widget>[
                new Text(widget.list[widget.index]['sayur'], style: new TextStyle(fontSize: 20.0),),
                new Text("Kalori : ${widget.list[widget.index]['kalori']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Karbohidrat : ${widget.list[widget.index]['karbohidrat']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Air : ${widget.list[widget.index]['air']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Protein : ${widget.list[widget.index]['protein']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Gula : ${widget.list[widget.index]['gula']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Serat : ${widget.list[widget.index]['serat']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Lemak : ${widget.list[widget.index]['lemak']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Vitamin A : ${widget.list[widget.index]['vitamin_a']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Vitamin C : ${widget.list[widget.index]['vitamin_c']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Vitamin D : ${widget.list[widget.index]['vitamin_d']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Vitamin E : ${widget.list[widget.index]['vitamin_e']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Vitamin B1 : ${widget.list[widget.index]['vitamin_b1']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Vitamin B2 : ${widget.list[widget.index]['vitamin_b2']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Vitamin B3 : ${widget.list[widget.index]['vitamin_b3']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Vitamin B5 : ${widget.list[widget.index]['vitamin_b5']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Vitamin B6 : ${widget.list[widget.index]['vitamin_b6']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Vitamin B9 : ${widget.list[widget.index]['vitamin_b9']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Vitamin B12 : ${widget.list[widget.index]['vitamin_b12']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Cholin : ${widget.list[widget.index]['cholin']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Kalsium : ${widget.list[widget.index]['kalsium']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Zat Besi : ${widget.list[widget.index]['zat_besi']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Magnesium : ${widget.list[widget.index]['magnesium']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Fosfor : ${widget.list[widget.index]['fosfor']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Potassium : ${widget.list[widget.index]['potassium']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Sodium : ${widget.list[widget.index]['sodium']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Seng : ${widget.list[widget.index]['seng']}", style: new TextStyle(fontSize: 18.0),),
              ],
           ),
        );
  }
}