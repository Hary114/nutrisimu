import 'package:flutter/material.dart';
import 'package:nutrisimu/pages/home.dart';
import 'package:nutrisimu/pages/listbuah.dart';
import 'package:nutrisimu/pages/listsayur.dart';

void main() {
  runApp (MaterialApp(
    debugShowCheckedModeBanner: false,
    home: JenisVitaminPages(), //route for home is '/' implicitly
    routes: <String, WidgetBuilder>{
      // define the routes
      SayurPages.routeName: (BuildContext context) => SayurPages(),
      Buah.routeName: (BuildContext context) => Buah(),
      
    },
  ));
}