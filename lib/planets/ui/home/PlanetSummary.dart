import 'package:flutter/material.dart';
import 'package:planets/planets/ui/common/separator.dart';
import 'package:planets/planets/ui/detail/DetailPage.dart';
import 'package:planets/planets/model/Planet.dart';
import 'package:planets/planets/ui/style.dart';

class PlanetSummary extends StatelessWidget {
  final Planet planet;
  final bool horizontal;

  PlanetSummary(this.planet, {this.horizontal = true});

  PlanetSummary.vertical(this.planet) : horizontal = false;

  Container get planetThumbnail => Container(
        margin: new EdgeInsets.symmetric(vertical: 16.0),
        alignment:
            horizontal ? FractionalOffset.centerLeft : FractionalOffset.center,
        child: Hero(
          tag: "planet-hero-${planet.id}",
          child: new Image(
            image: new AssetImage(planet.image),
            height: 92.0,
            width: 92.0,
          ),
        ),
      );

  Container get planetCard => new Container(
        child: planetCardContent,
        height: horizontal ? 124.0 : 154.0,
        margin: horizontal
            ? new EdgeInsets.only(left: 46.0)
            : EdgeInsets.only(top: 72.0),
        decoration: new BoxDecoration(
          color: new Color(0xFF333366),
          shape: BoxShape.rectangle,
          borderRadius: new BorderRadius.circular(8.0),
          boxShadow: <BoxShadow>[
            new BoxShadow(
              color: Colors.black12,
              blurRadius: 10.0,
              offset: new Offset(0.0, 10.0),
            ),
          ],
        ),
      );

  Container get planetCardContent => Container(
        margin: EdgeInsets.fromLTRB(
            horizontal ? 76.0 : 16.0, horizontal ? 16.0 : 42.0, 16.0, 16.0),
        constraints: new BoxConstraints.expand(),
        child: Column(
          crossAxisAlignment:
              horizontal ? CrossAxisAlignment.start : CrossAxisAlignment.center,
          children: <Widget>[
            new Container(height: 4.0),
            new Text(planet.name, style: Style.titleTextStyle),
            new Container(height: 8.0),
            new Text(planet.location, style: Style.commonTextStyle),
            new Separator(),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Expanded(
                    child: _planetValue(
                        planet.distance, "assets/imgs/ic_distance.png"),
                    flex: horizontal ? 1 : 0),
                new Container(width: horizontal ? 8.0 : 32.0),
                new Expanded(
                    flex: horizontal ? 1 : 0,
                    child: _planetValue(
                        planet.gravity, "assets/imgs/ic_gravity.png")),
              ],
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: horizontal
          ? () => Navigator.of(context).push(PageRouteBuilder(
                pageBuilder: (_, __, ___) => new DetailPage(planet),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) =>
                        new FadeTransition(opacity: animation, child: child),
              ))
          : null,
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 24.0,
        ),
        child: new Stack(
          children: <Widget>[
            planetCard,
            planetThumbnail,
          ],
        ),
      ),
    );
  }

  Widget _planetValue(String text, String image) {
    return Container(
      child: new Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          new Image.asset(image, height: 12.0),
          new Container(width: 8.0),
          new Text(text, style: Style.smallTextStyle),
        ],
      ),
    );
  }
}
