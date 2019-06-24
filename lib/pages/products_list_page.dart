import 'package:flutter/material.dart';
import 'package:estore/components/components.dart';
import 'package:estore/branding/branding.dart';

class ProductsListPage extends StatelessWidget {
  BuildContext context;

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      appBar: gradientAppBar(
        16.0,
        'Products',
        '.',
        'LIST',
        28.0,
        Colors.white,
        blueGradient,
        Brightness.dark,
        appBarActions,
      ),
      body: _buildProductsListPage(),
    );
  }

  _buildProductsListPage() {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      color: Colors.grey[100],
      child: ListView.builder(
        padding: EdgeInsets.all(5.0),
        itemCount: 5,
        itemBuilder: (context, index) {
          if (index == 0) {
            return _buildFilterWidgets(screenSize);
          } else {
            return _dummyProductsList()[index];
          }
        },
      ),
    );
  }
}