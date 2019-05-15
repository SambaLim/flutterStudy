import 'package:flutter/material.dart';
import 'package:flutter_planets02/model/Planets.dart';
import 'package:flutter_planets02/text_style.dart';

class PlanetRow extends StatelessWidget {

  final Planet planet;

  PlanetRow(this.planet);

  @override
  Widget build(BuildContext context) {

    final planetThumbnail = Container(
        margin: EdgeInsets.symmetric(
            vertical: 16.0
        ),
        alignment: FractionalOffset.centerLeft,
        child: new Image(
            image: new AssetImage(planet.image),
            height: 92.0,
            width: 92.0
        )
    );

    final planetCard = Container(
        height: 124.0,
        margin: EdgeInsets.only(left:46.0),
        decoration: BoxDecoration(
            color: Color(0xFF333366),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10.0,
                offset: Offset(0.0, 10.0),
              )
            ]
        )
    );

    final planetCardContent = Container(
      margin: EdgeInsets.fromLTRB(76.0, 16.0, 16.0, 16.0),
      constraints: BoxConstraints.expand(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(height: 4.0),
          Text(
            planet.name,
            style: subHeaderTextStyle,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 8.0),
            height: 2.0,
            width: 18.0,
            color: Color(0xff00c6ff),
          ),
          Row(
            children: <Widget>[
              Image.asset("assets/img/ic_distance.png", height:12.0),
              Container(
                width: 8.0
              ),
              Text(
                planet.distance,
                style: regularTextStyle
              ),
            ],
          )
        ],
      )
    );

    Widget _planetValue({String value, String image}) {
      return Row(
        children: <Widget>[
          Image.asset(image, height: 12.0),
          Container(width: 8.0),
          Text(
              planet.gravity,
              style:regularTextStyle
          )
        ],
      );
    }

    return new Container(
      margin: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 24.0,
      ),
      child: Stack(
        children: <Widget>[
          planetCard,
          planetThumbnail,
        ]
      )
    );
  }
}