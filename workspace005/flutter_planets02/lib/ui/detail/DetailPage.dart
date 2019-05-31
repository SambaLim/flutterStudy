import 'package:flutter/material.dart';
import 'package:flutter_planets02/model/Planets.dart';

class DetailPage extends StatelessWidget{

  final Planet planet;

  DetailPage(this.planet);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF736AB7),
        constraints: BoxConstraints.expand(),
        child: Stack(
          children: <Widget>[
            _getBackground()
          ],
        )
      )
    );
  }

  Container _getBackground() {
    return Container(
      child: Image.network(planet.image,
      fit: BoxFit.cover,
      height: 300.0,
      ),
      constraints: BoxConstraints.expand(height: 300.0),
    );
  }

}