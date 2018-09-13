import 'package:flutter/material.dart';
import 'package:planets/planets/ui/home/Planet.dart';
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
      "imgs/mars.png",
    ),
    const Planet(
      "2",
      "Neptune",
      "Milkyway Galaxy",
      "54.6m Km",
      "11.15 m/s ",
      "Lorem ipsum...",
      "imgs/neptune.png",
    ),
    const Planet(
      "3",
      "Moon",
      "Milkyway Galaxy",
      "54.6m Km",
      "1.622 m/s ",
      "Lorem ipsum...",
      "imgs/moon.png",
    ),
    const Planet(
      "4",
      "Earth",
      "Milkyway Galaxy",
      "54.6m Km",
      "9.807 m/s ",
      "Lorem ipsum...",
      "imgs/earth.png",
    ),
    const Planet(
      "5",
      "Mercury",
      "Milkyway Galaxy",
      "54.6m Km",
      "3.7 m/s ",
      "Lorem ipsum...",
      "imgs/mercury.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return PlanetRow(planets[0]);
  }
}
