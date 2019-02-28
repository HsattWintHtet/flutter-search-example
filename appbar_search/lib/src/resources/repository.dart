import 'dart:async';
import 'people_api_provider.dart';


class Repository {
  List<Source> sources = <Source>[PeopleApiProvider()];

  fetchPeopleNames() {
    return sources[0].fetchPeopleNames();
  }
}

abstract class Source {
 fetchPeopleNames();
}