import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Community_Screen/components/grid_view.dart';

class ComunityData extends StatefulWidget {
  @override
  _ComunityDataState createState() => _ComunityDataState();
}

class _ComunityDataState extends State<ComunityData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.deepPurple[900],
          Colors.deepPurple[800],
          Colors.deepPurple[400],
        ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(10)),
                  Text(
                    "Select Community",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontWeight: FontWeight.w200,
                        decorationStyle: TextDecorationStyle.double,
                        fontFamily: 'Montserrat-Light',
                        color: Colors.white,
                        fontSize: 30),
                  ),
                  IconButton(
                    iconSize: 40,

                    icon: Icon(Icons.search),
                    //this is on pressed search button and all 4 arguments required for search are created bellow
                    onPressed: () {
                      showSearch(context: context, delegate: DataSearch());
                    },
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: Column(
                //gridview is imported as it would not hamper the UI and this UI can be reusable if
                //the gridview is wrong you can directly make changes in th gridview.dart file for ontap or onpressed features
                children: <Widget>[Flexible(child: GridView_1())],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

//Methods for ontap features
class DataSearch extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    throw UnimplementedError();
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    throw UnimplementedError();
  }
}
