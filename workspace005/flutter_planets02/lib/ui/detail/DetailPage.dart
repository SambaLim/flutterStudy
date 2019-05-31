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
            _getBackground(),
            _getGradient()
          ],
        )
      )
    );
  }

  Container _getBackground() {
    return Container(
      child: Image.network(planet.picture,
      fit: BoxFit.cover,
      height: 300.0,
      ),
      constraints: BoxConstraints.expand(height: 300.0),
    );
  }

  Container _getGradient() {
    return Container(
      margin: EdgeInsets.only(top: 190.0),
      height: 110.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: <Color>[
              Color(0x00736AB7),
              Color(0xFF736AB7)
            ],
          stops: [0.0, 0.9],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(0.0, 1.0)
        )
      ),
    );
  }
}