import 'package:flutter/material.dart';
import 'package:estore/components/components.dart';
import 'package:estore/branding/branding.dart';

Widget homePageView() {
  return new Align(
    alignment: Alignment.topCenter,
    child: ListView(
      padding: EdgeInsets.all(4.0),
      children: <Widget>[
        new Padding(
          padding: EdgeInsets.only(
            left: 0.0,
            top: 2.0,
            right: 0.0,
            bottom: 2.0,
          ),
          child: gradientCard(
            10.0,
            10.0,
            8.0,
            goldenGradient,
            new Container(
              color: Colors.transparent,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(0.0),
              margin: EdgeInsets.all(2.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  gradientText(
                    'Exciting Offers!'.toUpperCase(),
                    20.0,
                    FontWeight.bold,
                    FontStyle.normal,
                    TextAlign.center,
                    blueGradient,
                  ),
                ],
              ),
            ),
          ),
        ),
        customCarousel(
          400.0,
          200.0,
          Axis.horizontal,
          8.0,
          images,
          images.length,
        ),
        new Padding(
          padding: EdgeInsets.only(
            left: 0.0,
            top: 2.0,
            right: 0.0,
            bottom: 2.0,
          ),
          child: gradientCard(
            10.0,
            10.0,
            8.0,
            goldenGradient,
            new Container(
              color: Colors.transparent,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(0.0),
              margin: EdgeInsets.all(2.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  gradientText(
                    'Freshly Launched!'.toUpperCase(),
                    20.0,
                    FontWeight.bold,
                    FontStyle.normal,
                    TextAlign.center,
                    blueGradient,
                  ),
                ],
              ),
            ),
          ),
        ),
        customCarousel(
          400.0,
          200.0,
          Axis.horizontal,
          8.0,
          images,
          images.length,
        ),
      ],
    ),
  );
}