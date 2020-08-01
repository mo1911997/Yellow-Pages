import 'package:flutter/material.dart';

class GridView_1 extends StatefulWidget {
  @override
  _GridView_1State createState() => _GridView_1State();
}

class _GridView_1State extends State<GridView_1> {
  @override
  Widget build(BuildContext context) {
    singleCard(cardtext) {
      return GestureDetector(
          child: Card(
        color: Colors.deepPurple[800],
        shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.white70, width: 1),
            borderRadius: BorderRadius.circular(25)),
        margin: EdgeInsets.all(20),
        //this child container can be changed to inkwell for ontap feature i have taken container just for the sake of static view
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                cardtext,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontFamily: 'Montserrat-Light',
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ));
    }

    return Container(
      child: GridView.count(
        crossAxisSpacing: 5,
        crossAxisCount: 2,
        children: <Widget>[
          singleCard('Marathi / मराठी'),
          singleCard('Punjabi / पंजाबी'),
          singleCard('Gujarati / ગુજરાતી'),
          singleCard('Bengali / বাংলা'),
          singleCard('N/A'),
        ],
      ),
    );
  }
}
