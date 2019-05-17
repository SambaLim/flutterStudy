import 'package:flutter/material.dart';
import 'package:flutter_planets02/ui/home/HomePage.dart';
import 'package:flutter_planets02/ui/detail/DetailPage.dart';

void main() {
  runApp(MaterialApp(
    title: "Lim\'s Planets'",
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    routes: <String, WidgetBuilder>{
      '/detail': (_) => DetailPage(),
    },
  ));
}