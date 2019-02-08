import 'package:flutter/material.dart';

class LogInScreen extends StatelessWidget{
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: Column(
        children: <Widget>[
          FirstField()
        ],
      ),
    );
  }
}

class FirstField extends StatelessWidget {
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('Your Phone Number',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
            subtitle: Text('\nGoTurf will send a one time SMS messge to verify your phone number.Enter your phone number.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          
                        ),
                      ),
            contentPadding: EdgeInsets.all(15.0),
          ),
        ],
      ),
    );
  }
}