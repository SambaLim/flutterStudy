import 'package:flutter/material.dart';

class PlanetRow extends StatelessWidget {

  final planetThumbnail = Container(
    margin: EdgeInsets.symmetric(
      vertical: 16.0
    ),
    alignment: FractionalOffset.centerLeft,
    child: new Image(
      image: new AssetImage("assets/img/mars.png"),
      height: 92.0,
      width: 92.0
    )
  );

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 24.0,
      ),
      child: Stack(
        children: <Widget>[
          //planetCard,
          planetThumbnail,
        ]
      )
    );
  }
}