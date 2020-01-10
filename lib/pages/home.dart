import 'package:flutter/material.dart';
import 'package:nutrisimu/pages/listbuah.dart';
import 'package:nutrisimu/pages/listsayur.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class JenisVitaminPages extends StatefulWidget {
  @override 
  JenisVitaminPagesState createState () => JenisVitaminPagesState();
}

class JenisVitaminPagesState extends State <JenisVitaminPages> {
  Drawer getNavDrawer(BuildContext context) {
    var headerChild = DrawerHeader(child: Text("Menu"));
    var aboutChild = AboutListTile(
      applicationName: "NutrisiMu",
   );
     
  ListTile getNavItem(var icon, String s, String routeName){
    return ListTile(
      title: Text(s),
      onTap: (){
        setState( (){
          Navigator.of(context).pop();
          Navigator.of(context).pushNamed(routeName);
        });
      },
    );
 }
   var myNavChildren = [
       headerChild,
       getNavItem(Icons.home, "Jenis Vitamin", "/"),
       getNavItem(Icons.favorite, "Buah", Buah.routeName),   
       getNavItem(Icons.favorite_border, "Sayur", SayurPages.routeName),   


       aboutChild
     ];

     ListView listView = ListView(children: myNavChildren);

     return Drawer(
       child: listView,
       );
  }
  Future<List> getData() async {
    final response = await http.get("http://10.0.2.2/my_store/getdata.php");
    return json.decode(response.body);
  }
  
  @override 
  Widget build(BuildContext context ) {
    return Scaffold( 
      appBar: AppBar( 
        title: Text ("Jenis Vitamin"),
        backgroundColor: Colors.lightGreenAccent[400],
       ),
      
          body: Card(
            child: Padding(
              padding: const EdgeInsets.only(top: 32.0, bottom: 32.0, left: 16.0, right: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Vitamin A",
                  style: TextStyle(
                    fontSize:20,
                    fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("Vitamin B1",
                  style: TextStyle(
                    fontSize:20,
                    fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("Vitamin B2",
                  style: TextStyle(
                    fontSize:20,
                    fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("Vitamin B3",
                  style: TextStyle(
                    fontSize:20,
                    fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("Vitamin B5",
                  style: TextStyle(
                    fontSize:20,
                    fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("Vitamin B6",
                  style: TextStyle(
                    fontSize:20,
                    fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("Vitamin B7",
                  style: TextStyle(
                    fontSize:20,
                    fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("Vitamin B9",
                  style: TextStyle(
                    fontSize:20,
                    fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("Vitamin B12",
                  style: TextStyle(
                    fontSize:20,
                    fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("Vitamin C",
                  style: TextStyle(
                    fontSize:20,
                    fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("Vitamin D",
                  style: TextStyle(
                    fontSize:20,
                    fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("Vitamin E",
                  style: TextStyle(
                    fontSize:20,
                    fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("Vitamin K",
                  style: TextStyle(
                    fontSize:20,
                    fontWeight: FontWeight.bold
                    ),
                  ),

               ],
             )
          )
       ),
    drawer: getNavDrawer(context),
);
  }
 }
 