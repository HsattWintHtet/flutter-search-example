import 'dart:async';
import 'package:dio/dio.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:convert';

class SearchBloc {
  final dio = new Dio();
  String _searchText = '';
  List items = List();
  List filteredItems = List();

  final _focusField = BehaviorSubject<bool>();
  final _searchField = BehaviorSubject<String>();

  Stream<bool> get focusField => _focusField.stream;
  Stream<String> get searchField => _searchField.stream;

  Function(bool) get changeFocus => _focusField.sink.add;
  Function(String) get changeSearch => _searchField.sink.add;

  void getItems() async {
    final response = await dio.get('https://swapi.co/api/people');
    print(response); 
    var tempList = List(); 
    for (int i = 0; i < response.data['results'].length; i++) {
      print(response.data['results'][i]["name"]);
      print("WTF is happening");
      tempList.add(response.data['results'][i]["name"]); 
    }

    items = tempList;
  }



  dispose() {
    _focusField.close();
    _searchField.close();
  }
}
