import 'package:flutter/material.dart';
import 'package:planets/planets/model/Planet.dart';
import 'package:planets/planets/ui/home/PlanetSummary.dart';

class HomePageBody extends StatelessWidget {

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
                      (context, index) => new PlanetSummary(planets[index]),
                      childCount: planets.length),
                  itemExtent: 152.0),
            )
          ],
        ),
      ),
    );
  }
}
