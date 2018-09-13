import 'package:flutter/material.dart';
import 'package:planets/planets/ui/home/GradientAppBar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          new GradientAppBar("treva"),
        ],
      ),
    );
  }
}
