import 'package:flutter/material.dart';
import 'package:flutter_planets02/ui/home/GradientAppBar.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          GradientAppBar("Treva"),
        ],
      ),
    );
  }
}

