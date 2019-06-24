import 'package:flutter/material.dart';
import 'package:estore/branding/branding.dart';
import 'package:estore/components/components.dart';
import 'package:estore/pages/home_page.dart';
import 'package:estore/pages/categories_page.dart';
import 'package:estore/pages/favourites_page.dart';
import 'package:estore/pages/cart_page.dart';
//import 'package:estore/pages.dart';
//import 'package:estore/routes.dart';

void main() => runApp(MyApp());

final int numberOfTabs = 4;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'BrandName.ONLINE',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black54,
        scaffoldBackgroundColor: Colors.blueGrey,
      ),
      home: new MainStore(),
      //routes: Routes.routes,
    );
  }
}

class MainStore extends StatefulWidget {
  @override
  MainStoreState createState() => MainStoreState();
}

class MainStoreState extends State<MainStore>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var deviceOrientation = MediaQuery.of(context).orientation;
    if (deviceOrientation == Orientation.portrait) {
      return new DefaultTabController(
        length: numberOfTabs,
        initialIndex: 0,
        child: new Scaffold(
          appBar: gradientAppBar(
            16.0,
            'StoreShop',
            '.',
            'ONLINE',
            28.0,
            Colors.white,
            blueGradient,
            Brightness.dark,
            appBarActions,
          ),
          bottomNavigationBar: new Container(
            decoration: new BoxDecoration(
              gradient: new LinearGradient(
                colors: blueGradient,
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 1.0),
                stops: [0.0, 0.25, 0.75, 1.0],
                tileMode: TileMode.clamp,
              ),
            ),
            child: new BottomAppBar(
              color: Colors.black12,
              elevation: 16.0,
              notchMargin: -8.0,
              shape: CircularNotchedRectangle(),
              child: Container(
                color: Colors.transparent,
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: 0.5,
                  indicatorColor: Colors.transparent,
                  labelPadding: EdgeInsets.all(0.0),
                  indicatorPadding: EdgeInsets.all(0.0),
                  tabs: [
                    Tab(
                      icon: gradientIcon(Icons.home, 30.0, goldenGradient),
                      child: gradientText('HOME', 12.0, FontWeight.normal,
                          FontStyle.normal, TextAlign.center, goldenGradient),
                    ),
                    Tab(
                      icon: gradientIcon(Icons.category, 30.0, goldenGradient),
                      child: gradientText('CATEGORIES', 12.0, FontWeight.normal,
                          FontStyle.normal, TextAlign.center, goldenGradient),
                    ),
                    Tab(
                      icon: gradientIcon(Icons.favorite, 30.0, goldenGradient),
                      child: gradientText('FAVOURITES', 12.0, FontWeight.normal,
                          FontStyle.normal, TextAlign.center, goldenGradient),
                    ),
                    Tab(
                      icon: gradientIcon(
                          Icons.shopping_cart, 30.0, goldenGradient),
                      child: gradientText('MY CART', 12.0, FontWeight.normal,
                          FontStyle.normal, TextAlign.center, goldenGradient),
                    ),
                  ],
                ),
              ),
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: gradientCircularButton(
            60.0,
            60.0,
            16.0,
            100.0,
            10.0,
            goldenGradient,
            [
              gradientIcon(
                Icons.search,
                30.0,
                blueGradient,
              ),
            ],
          ),
          body: new TabBarView(
            children: [
              homePageView(),
              categoriesPageView(),
              favouritesPageView(),
              cartPageView(),
            ],
          ),
        ),
      );
    } else {
      return new Scaffold(
        body: new Center(
          child: new Container(
            child: new Text(
              'Landscape mode is under development.\nIt will be coming soon! Thank You!',
            ),
          ),
        ),
      );
    }
  }
}