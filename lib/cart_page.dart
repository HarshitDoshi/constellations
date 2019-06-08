import 'package:flutter/material.dart';
import 'package:estore/components/components.dart';
import 'package:estore/branding/branding.dart';

Widget cartPageView() {
  return new Align(
    alignment: Alignment.topCenter,
    child: Container(
      padding: EdgeInsets.all(5.0),
      margin: EdgeInsets.all(5.0),
      alignment: Alignment.topCenter,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.all(0.0),
                margin: EdgeInsets.all(0.0),
                child: new Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Padding(
                      padding: EdgeInsets.only(
                        left: 5.0,
                        top: 0.0,
                        right: 5.0,
                        bottom: 0.0,
                      ),
                      child: new RichText(
                        text: new TextSpan(
                          text: 'Total:' + '\n',
                          style: new TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal,
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            new TextSpan(
                              text: '\$719.00',
                              style: new TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.w300,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              new Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(0.0),
                margin: EdgeInsets.all(0.0),
                child: new Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    gradientButton(
                      8.0,
                      50.0,
                      10.0,
                      150.0,
                      45.0,
                      goldenGradient,
                      [
                        gradientIcon(
                          Icons.payment,
                          25.0,
                          blueGradient,
                        ),
                        gradientText(
                          'Checkout',
                          20.0,
                          FontWeight.normal,
                          FontStyle.normal,
                          TextAlign.center,
                          blueGradient,
                        ),
                        gradientIcon(
                          Icons.arrow_forward_ios,
                          20.0,
                          blueGradient,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}