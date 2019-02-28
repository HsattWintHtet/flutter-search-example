import 'dart:convert' as convert;
import 'package:http/http.dart' show Client;
import 'dart:async';
import 'repository.dart';

final _address = "https://swapi.co/api/people/";

class PeopleApiProvider implements Source {
  Client client = Client();

  fetchPeopleNames() async {
    final response = await client.get('$_address');
    final results = convert.jsonDecode(response.body)["results"];
    var _tempList = new List();
    for(int i=0;i<results.length;i++){
      _tempList.add(results[i]["name"]);
    }
    print(_tempList);
    return _tempList;
  }
}