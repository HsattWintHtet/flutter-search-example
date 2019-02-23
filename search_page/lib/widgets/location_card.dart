import 'package:flutter/material.dart';

class LocationCard extends StatelessWidget {
  final String location;
  final Color color;

  LocationCard({this.location, this.color});

  Widget build(BuildContext context) {
    return card();
  }

  Widget card() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      child: Stack(
        children: <Widget>[colorBox()],
      ),
    );
  }

  Widget colorBox() {
    return Container(
      height: 80.0,
      width: 120.0,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8.0),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: color,
            blurRadius: 1.0,
            offset: (Offset(0.0, 2.0)),
          ),
        ],
      ),
      child: Center(
        child:locationName()),
    );
  }

  final textStyle = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );

  Widget locationName() {
    Text locationName = Text(
      location,
      style: textStyle,
    );

    return locationName;
  }
}
