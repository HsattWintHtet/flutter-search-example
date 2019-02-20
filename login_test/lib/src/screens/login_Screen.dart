import 'package:flutter/material.dart';

class LogInScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: Column(
        children: <Widget>[textPart(), numberEntryPart(),],
      ),
    );
  }

  Widget textPart() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(
              'Your Phone Number',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              '\nGoTurf will send a one time SMS messge to verify your phone number.Enter your phone number.',
              textAlign: TextAlign.center,
              style: TextStyle(),
            ),
            contentPadding: EdgeInsets.all(15.0),
          ),
        ],
      ),
    );
  }

  Widget numberEntryPart() {
    return Card(
      child: Column(
        children: <Widget>[
          phoneField(),
          button()
        ],
      ),
      margin: EdgeInsets.all(20.0),
    );
  }


  Widget phoneField() {
    return Container(
      padding: EdgeInsets.all(50.0),
      child: TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            hintText: '10 digit phone number', labelText: 'Phone number'),
        ),
    );
  }

  Widget button() {
    return RaisedButton(
      child: Icon(IconData(0xe5c8, fontFamily: 'MaterialIcons', matchTextDirection: true)),
      splashColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(360.0)),
    );
  }
}
