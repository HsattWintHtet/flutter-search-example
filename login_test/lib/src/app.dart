import 'package:flutter/material.dart';
import 'screens/login_Screen.dart';

class App extends StatelessWidget{
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "GoTurf",
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sign in'),
        ),
        body: LogInScreen(),
      ),
    );
  }
}