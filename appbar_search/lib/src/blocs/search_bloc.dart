import 'dart:async';
import 'package:rxdart/rxdart.dart';

class SearchBloc {
  final _focusField = BehaviorSubject<bool>();
  final _searchField = BehaviorSubject<String>();

  Stream<bool> get focusField => _focusField.stream;
  Stream<String> get searchField => _searchField.stream;

  Function(bool) get changeFocus => _focusField.sink.add;
  Function(String) get changeSearch => _searchField.sink.add;

  dispose() {
    _focusField.close();
    _searchField.close();
  }
}