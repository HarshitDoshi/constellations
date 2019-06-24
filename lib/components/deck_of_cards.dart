import 'package:flutter/material.dart';

Widget deckOfCards(BuildContext context) {
  Size screenSize = MediaQuery.of(context).size;
  return new Card(
    color: Colors.transparent,
    elevation: 4.0,
    child: new Container(
      width: screenSize.width / 1.2,
      height: screenSize.height / 1.7,
      decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: new BorderRadius.circular(8.0),
      ),
      child: new Column(
        children: <Widget>[
          new Container(
            width: screenSize.width / 1.2,
            height: screenSize.height / 2.2,
            decoration: new BoxDecoration(
              borderRadius: new BorderRadius.only(
                topLeft: new Radius.circular(8.0),
                topRight: new Radius.circular(8.0),
              ),
              image: img,
            ),
          ),
          new Container(
            width: screenSize.width / 1.2,
            height: screenSize.height / 1.7 - screenSize.height / 2.2,
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new SwipeButton(
                  text: 'NOPE',
                  onClick: swipeLeft,
                ),
                new SwipeButton(
                  text: 'YEP',
                  onClick: swipeRight,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}