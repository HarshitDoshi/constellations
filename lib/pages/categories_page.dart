import 'package:flutter/material.dart';
import 'package:estore/components/components.dart';
import 'package:estore/branding/branding.dart';

Widget categoriesPageView() {
  return new Align(
    alignment: Alignment.topCenter,
    child: ListView(
      padding: EdgeInsets.all(0.0),
      children: <Widget>[
        gradientCard(
          0.0,
          0.0,
          4.0,
          blueGradient,
          categoryCardContent(
            400.0,
            200.0,
            'https://via.placeholder.com/400x200',
            'Category XYZ',
            goldenGradient,
            'Explore',
            goldenGradient,
            blueGradient,
            blueGradient,
          ),
        ),
      ],
    ),
  );
}