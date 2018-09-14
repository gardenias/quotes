import 'package:flutter/material.dart';
import 'package:planets/planets/model/Planet.dart';
import 'package:planets/planets/ui/common/separator.dart';
import 'package:planets/planets/ui/home/PlanetSummary.dart';
import 'package:planets/planets/ui/style.dart';

class DetailPage extends StatelessWidget {
  final Planet planet;

  DetailPage(this.planet);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        color: Color(0xFF736AB7),
        child: Stack(
          children: <Widget>[
            _getBackground(),
            _getGradient(),
            _getContent(),
            _getToolbar(context),
          ],
        ),
      ),
    );
  }

  Widget _getBackground() {
    return Container(
      child: Image.network(
        planet.picture,
        fit: BoxFit.cover,
        height: 300.0,
      ),
      constraints: BoxConstraints.expand(height: 300.0),
    );
  }

  Widget _getGradient() {
    return Container(
      margin: EdgeInsets.only(top: 190.0),
      height: 110.0,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: <Color>[
        Color(0x007c6AB7),
        Color(0xFF736AB7),
      ], stops: [
        0.0,
        0.9
      ], begin: FractionalOffset(0.0, 0.0), end: FractionalOffset(0.0, 1.0))),
    );
  }

  Widget _getContent() {
    final _overviewTitle = "Overview".toUpperCase();
    return ListView(
      padding: EdgeInsets.fromLTRB(0.0, 72.0, 0.0, 32.0),
      children: <Widget>[
        new PlanetSummary.vertical(
          planet,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(
                _overviewTitle,
                style: Style.headerTextStyle,
              ),
              Separator(),
              new Text(
                planet.description,
                style: Style.commonTextStyle,
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _getToolbar(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: BackButton(color: Colors.white));
  }
}

