import 'package:flutter/material.dart';
import 'package:planets/planets/ui/home/GradientAppBar.dart';
import 'package:planets/planets/ui/home/HomePageBody.dart';
import 'package:planets/planets/ui/home/Planet.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          new GradientAppBar("treva"),
          HomePageBody(),
          HomePageBody(),
          HomePageBody(),
          HomePageBody(),
        ],
      ),
    );
  }
}
