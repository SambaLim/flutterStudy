import 'package:flutter/material.dart';
import 'package:flutter_planets02/model/Planets.dart';

class DetailPage extends StatelessWidget{

  final Planet planet;

  DetailPage(this.planet);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Plannet Detail")
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(planet.name),
            Image.asset(planet.image, width:96.0, height: 96.0)
          ],
        )
      )
    );
  }
}