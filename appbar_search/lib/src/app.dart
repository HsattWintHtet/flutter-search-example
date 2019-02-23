import 'package:flutter/material.dart';
import 'screens/search_page.dart';

class App extends StatelessWidget {
 Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Api Filter Using Bloc',
     theme: ThemeData(
       primarySwatch: Colors.red,
     ),
     home: SearchPage(),
   );
 } 
}