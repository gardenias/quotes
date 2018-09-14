import 'package:flutter/material.dart';
import 'package:planets/planets/model/Planet.dart';

class DetailPage extends StatelessWidget {
  final Planet planet;

  DetailPage(this.planet);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(planet.name),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(planet.name),
            Hero(
                tag: "planet-hero-${planet.id}",
                child: Image.asset(planet.image, width: 96.0, height: 96.0))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: Icon(Icons.keyboard_backspace),
      ),
    );
  }
}
