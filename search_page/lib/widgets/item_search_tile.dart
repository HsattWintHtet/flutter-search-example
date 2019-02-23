import 'package:flutter/material.dart';

class ItemSearchTile extends StatelessWidget {
  final String name;
  final Color color;
  
  ItemSearchTile({this.name, this.color});

  Widget build(BuildContext context) {
    return tile();
  }

  Widget tile(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      child: Stack(
        children: <Widget>[
          colorBox(color),
        ],
      ),
    );
  }

  Widget colorBox(Color color) {
    return Container(
      height: 100.0,
      width: 140.0,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 2.0,
            offset: (Offset(0.0, 2.0)),
          ),
        ],
      ),
    );
  }
}