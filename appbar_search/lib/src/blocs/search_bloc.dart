import 'dart:async';
import 'package:rxdart/rxdart.dart';
//import 'dart:convert';
//import '../models/item_model.dart';
import '../resources/repository.dart';

class SearchBloc {

  final _repository = Repository();
  final _names =PublishSubject();

  final _focusField = BehaviorSubject<bool>();
  final _searchField = BehaviorSubject<String>();

  Observable get names => _names.stream;
  Stream<bool> get focusField => _focusField.stream;
  Stream<String> get searchField => _searchField.stream;

  Function(bool) get changeFocus => _focusField.sink.add;
  Function(String) get changeSearch => _searchField.sink.add;

  fetchNames() async {
    final results = await _repository.fetchPeopleNames();
    /*
    var names = List();
    for(int i=0;i<names.length;i++){
      tempItems.add(ItemModel(name: names[i]));
    }*/
    _names.sink.add(results);
  }

  dispose() {
    _names.close();
    _focusField.close();
    _searchField.close();
  }
}