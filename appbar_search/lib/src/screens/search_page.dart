import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import '../blocs/search_bloc_provider.dart';

class SearchPage extends StatelessWidget {
  Widget bodyPart(BuildContext context, AsyncSnapshot snapshot, SearchBloc bloc) {
    if (snapshot.data) {
      return StreamBuilder(
        stream: bloc.searchField,
        builder: (context, snapshot){
          if(snapshot.hasData){
            return Text(snapshot.data);
          } else {
            return Text('Type something Yo');
          }
        },
      );
    } else {
      return Text("If you can read this code then you must be god.");
    }
  }

  Widget leadingWidgetAppbar(BuildContext context, AsyncSnapshot snapshot,
      SearchBloc bloc, TextEditingController controller) {
    if (snapshot.data) {
      return GestureDetector(
        child: Icon(Icons.arrow_back),
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
          bloc.changeFocus(false);
          controller.text = "";
        },
      );
    }
    return Icon(Icons.search);
  }

  Widget build(BuildContext context) {
    final bloc = SearchProvider.of(context);

    var controller = TextEditingController();
    var _focusNode = FocusNode();

    _focusNode.addListener(() {
      print(_focusNode.hasFocus);
      bloc.changeFocus(_focusNode.hasFocus);
    });

    bloc.changeFocus(false);

    return StreamBuilder(
      stream: bloc.focusField,
      builder: (context, snapshot) {
        return Scaffold(
          appBar: AppBar(
            leading: leadingWidgetAppbar(context, snapshot, bloc, controller),
            title: TextField(
              onChanged: bloc.changeSearch,
              controller: controller,
              focusNode: _focusNode,
              decoration: InputDecoration(
                hintText: 'Search',
              ),
            ),
          ),
          body: Container(
            child: bodyPart(context, snapshot, bloc),
          ),
        );
      },
    );
  }
}

/*
class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => new _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _filter = new TextEditingController();
  final dio = new Dio();
  String _searchText = "";
  List names = new List();
  List filteredNames = new List();
  Icon _searchIcon = new Icon(Icons.search);
  Widget _appBarTitle = new Text('Search Example');

  _SearchPageState() {
    _filter.addListener(() {
      if (_filter.text.isEmpty) {
        setState(() {
          _searchText = "";
          filteredNames = names;
        });
      } else {
        setState(() {
          _searchText = _filter.text;
        });
      }
    });
  }

  @override
  void initState() {
    this._getNames();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildBar(context),
      body: Container(
        child: _buildList(),
      ),
      resizeToAvoidBottomPadding: false,
    );
  }

  Widget _buildBar(BuildContext context) {
    return new AppBar(
      centerTitle: true,
      title: _appBarTitle,
      leading: new IconButton(
        icon: _searchIcon,
        onPressed: _searchPressed,
      ),
    );
  }

  Widget _buildList() {
    if (!(_searchText.isEmpty)) {
      List tempList = new List();
      for (int i = 0; i < filteredNames.length; i++) {
        if (filteredNames[i]['name']
            .toLowerCase()
            .contains(_searchText.toLowerCase())) {
          tempList.add(filteredNames[i]);
        }
      }
      filteredNames = tempList;
    }
    return ListView.builder(
      itemCount: names == null ? 0 : filteredNames.length,
      itemBuilder: (BuildContext context, int index) {
        return new ListTile(
          title: Text(filteredNames[index]['name']),
          onTap: () => print(filteredNames[index]['name']),
        );
      },
    );
  }

  void _searchPressed() {
    setState(() {
      if (this._searchIcon.icon == Icons.search) {
        this._searchIcon = new Icon(Icons.close);
        this._appBarTitle = new TextField(
          controller: _filter,
          decoration: new InputDecoration(
              prefixIcon: new Icon(Icons.search), hintText: 'Search...'),
        );
      } else {
        this._searchIcon = new Icon(Icons.search);
        this._appBarTitle = new Text('Search Example');
        filteredNames = names;
        _filter.clear();
      }
    });
  }

  void _getNames() async {
    final response = await dio.get('https://swapi.co/api/people');
    List tempList = new List();
    for (int i = 0; i < response.data['results'].length; i++) {
      tempList.add(response.data['results'][i]);
    }
    setState(() {
      names = tempList;
      names.shuffle();
      filteredNames = names;
    });
  }
}

*/
