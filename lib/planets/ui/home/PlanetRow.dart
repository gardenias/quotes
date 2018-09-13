import 'package:flutter/material.dart';
import 'package:planets/planets/ui/home/Planet.dart';

class PlanetRow extends StatelessWidget {
  final Planet planet;

  PlanetRow(this.planet);

  Container get planetThumbnail => Container(
        margin: new EdgeInsets.symmetric(vertical: 16.0),
        alignment: FractionalOffset.centerLeft,
        child: new Image(
          image: new AssetImage(planet.image),
          height: 92.0,
          width: 92.0,
        ),
      );

  Container get planetCard => new Container(
        height: 124.0,
        margin: new EdgeInsets.only(left: 46.0),
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
        child: planetCardContent,
      );

  Container get planetCardContent => Container(
        margin: EdgeInsets.fromLTRB(76.0, 16.0, 16.0, 16.0),
        constraints: new BoxConstraints.expand(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Container(height: 4.0),
            new Text(planet.name, style: headerTextStyle),
            new Container(height: 10.0),
            new Text(planet.location, style: subHeaderTextStyle),
            new Container(
                margin: EdgeInsets.symmetric(vertical: 8.0),
                height: 2.0,
                width: 18.0,
                color: Color(0xff00c6ff)),
            new Row(
              children: <Widget>[
                new Expanded(
                    child: _planetValue(planet.distance, "imgs/ic_distance.png")),
                new Expanded(
                    child: _planetValue(planet.gravity, "imgs/ic_gravity.png")),
              ],
            ),
          ],
        ),
      );

  static final baseTextStyle = const TextStyle(
    fontFamily: 'Poppins',
  );
  static final headerTextStyle = const TextStyle(
    color: Colors.white,
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
  );
  static final regularTextStyle = baseTextStyle.copyWith(
    color: Color(0xffb6b2df),
    fontSize: 9.0,
    fontWeight: FontWeight.w400,
  );
  static final subHeaderTextStyle = regularTextStyle.copyWith(
    fontSize: 12.0,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }

  Widget _planetValue(String text, String image) {
    return new Row(
      children: <Widget>[
        new Container(width: 24.0),
        new Image.asset(image, height: 12.0),
        new Container(width: 8.0),
        new Text(text, style: regularTextStyle),
      ],
    );
  }
}
