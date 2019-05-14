import 'package:flutter/material.dart';
import 'package:flutter_planets02/ui//home/PlanetRow.dart';
import 'package:flutter_planets02/model/Planets.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new PlanetRow(planets[0]);
  }
}