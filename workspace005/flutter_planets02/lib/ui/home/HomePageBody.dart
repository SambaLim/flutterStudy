import 'package:flutter/material.dart';
import 'package:flutter_planets02/ui//home/PlanetRow.dart';
import 'package:flutter_planets02/model/Planets.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
          itemBuilder: (context, index) => PlanetRow(planets[index]),
          itemCount: planets.length,
          padding: EdgeInsets.symmetric(vertical: 16.0)
        ),
    );
  }
}