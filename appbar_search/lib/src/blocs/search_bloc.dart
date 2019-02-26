import 'dart:async';
import 'package:rxdart/rxdart.dart';

class SearchBloc {
  final _focusField = BehaviorSubject<bool>();

  Stream<bool> get focusField => _focusField.stream;

  Function(bool) get changeFocus => _focusField.sink.add;

  dispose() {
    _focusField.close();
  }
}
