import 'package:flutter/material.dart';
import 'screens/search_page.dart';
import 'blocs/search_bloc_provider.dart';

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return SearchProvider(
        child: MaterialApp(
      title: 'Api Filter Using Bloc',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SearchPage(),
    ));
  }
}
