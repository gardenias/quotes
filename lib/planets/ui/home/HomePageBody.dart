import 'package:flutter/material.dart';
import 'package:planets/planets/model/Planet.dart';
import 'package:planets/planets/ui/home/PlanetRow.dart';

class HomePageBody extends StatelessWidget {
  final List<Planet> planets = [
    const Planet(
      "1",
      "Mars",
      "Milkyway Galaxy",
      "227.9m Km",
      "3.711 m/s ",
      "Lorem ipsum...",
      "assets/imgs/mars.png",
    ),
    const Planet(
      "2",
      "Neptune",
      "Milkyway Galaxy",
      "54.6m Km",
      "11.15 m/s ",
      "Lorem ipsum...",
      "assets/imgs/neptune.png",
    ),
    const Planet(
      "3",
      "Moon",
      "Milkyway Galaxy",
      "54.6m Km",
      "1.622 m/s ",
      "Lorem ipsum...",
      "assets/imgs/moon.png",
    ),
    const Planet(
      "4",
      "Earth",
      "Milkyway Galaxy",
      "54.6m Km",
      "9.807 m/s ",
      "Lorem ipsum...",
      "assets/imgs/earth.png",
    ),
    const Planet(
      "5",
      "Mercury",
      "Milkyway Galaxy",
      "54.6m Km",
      "3.7 m/s ",
      "Lorem ipsum...",
      "assets/imgs/mercury.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Color(0xFF736AB7),
        child: CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: <Widget>[
            new SliverPadding(
              padding: EdgeInsets.symmetric(vertical: 24.0),
              sliver: new SliverFixedExtentList(
                  delegate: SliverChildBuilderDelegate(
                      (context, index) => new PlanetRow(planets[index]),
                      childCount: planets.length),
                  itemExtent: 152.0),
            )
          ],
        ),
      ),
    );
  }
}
