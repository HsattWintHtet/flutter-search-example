import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widgets/location_card.dart';
import 'widgets/item_search_tile.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    //print(MediaQuery.of(context).size);
    return CupertinoApp(
      home: CupertinoPageScaffold(
        resizeToAvoidBottomInset: false,
        navigationBar: CupertinoNavigationBar(
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          middle: CupertinoTextField(
            placeholder: 'Search',
            decoration: BoxDecoration(
                color: Colors.white10,
                border: Border.all(
                  width: 1.0,
                  color: Colors.grey,
                )),
          ),
          trailing: Icon(
            Icons.remove_red_eye,
            color: Colors.black,
          ),
        ),
        child: Column(
          children: <Widget>[
            buildList(),
            buildBody(context),
          ],
        ),
      ),
    );
  }

  Widget buildBody(BuildContext context) {
    return Container(
      /*decoration: BoxDecoration(
        border: Border(top: BorderSide(color: Colors.red, width: 10.0)),
      ),*/
      //alignment: Alignment.topCenter,
      height: 462.0,
      child: ListView(
        padding: EdgeInsets.only(top: 17.5),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Column(
            children: <Widget>[
              buildSearchTile(),
              buildSearchTile(),
              buildSearchTile(),
              buildSearchTile(),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildList() {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black26,
              blurRadius: 3.0,
              offset: (Offset(0.0, 3.0)),
            ),
          ],
        ),
        height: 100.0,
        margin: EdgeInsets.only(top: 67.5),
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(
                  width: 10.0,
                ),
                LocationCard(
                  location: "Location 1",
                  color: Colors.grey,
                ),
                LocationCard(
                  location: "Location 2",
                  color: Colors.grey,
                ),
                LocationCard(
                  location: "Location 3",
                  color: Colors.grey,
                ),
                LocationCard(
                  location: "Location 4",
                  color: Colors.grey,
                )
              ],
            )
          ],
        ));
  }

  Widget buildSearchTile() {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 10.0),
          child: Text(
            'Centres in Location 1',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          alignment: Alignment.topLeft,
        ),
        Container(
          alignment: Alignment.topCenter,
          height: 120.0,
          //margin: EdgeInsets.only(left: 10.0),
          padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 5.0,
                  ),
                  ItemSearchTile(color: Colors.grey),
                  ItemSearchTile(color: Colors.grey),
                  ItemSearchTile(color: Colors.grey),
                  ItemSearchTile(color: Colors.grey),
                  ItemSearchTile(color: Colors.grey),
                  ItemSearchTile(color: Colors.grey),
                  ItemSearchTile(color: Colors.grey),
                  ItemSearchTile(color: Colors.grey),
                  ItemSearchTile(color: Colors.grey),
                  ItemSearchTile(color: Colors.grey),
                  ItemSearchTile(color: Colors.grey),
                  ItemSearchTile(color: Colors.grey),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
      ],
    );
  }
}
