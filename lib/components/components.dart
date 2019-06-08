import 'package:flutter/material.dart';

final List<String> images = [
  'https://via.placeholder.com/400x200',
  'https://via.placeholder.com/400x200',
  'https://via.placeholder.com/400x200',
  'https://via.placeholder.com/400x200',
  'https://via.placeholder.com/400x200',
];

Widget gradientAppBar(
    double elevation,
    String brandName,
    String secondarySymbol,
    String secondaryText,
    double fontSize,
    Color titleTextColor,
    List<Color> gradientColorsList,
    Brightness brightness,
    List<Widget> actionIconButtonsList) {
  return new AppBar(
    automaticallyImplyLeading: false,
    elevation: elevation,
    title: new RichText(
      text: new TextSpan(
        text: brandName,
        style: new TextStyle(
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal,
          fontSize: fontSize,
          color: titleTextColor,
        ),
        children: <TextSpan>[
          new TextSpan(
            text: secondarySymbol,
            style: new TextStyle(
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
            ),
          ),
          new TextSpan(
            text: secondaryText,
            style: new TextStyle(
              fontWeight: FontWeight.w100,
              fontStyle: FontStyle.normal,
            ),
          ),
        ],
      ),
    ),
    flexibleSpace: new Container(
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
          colors: gradientColorsList,
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(1.0, 1.0),
          stops: [0.0, 0.33, 0.66, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),
    ),
    brightness: brightness,
    actions: actionIconButtonsList,
  );
}

Widget gradientText(
    String text,
    double fontSize,
    FontWeight fontWeight,
    FontStyle fontStyle,
    TextAlign textAlignment,
    List<Color> gradientColorsList) {
  return new Center(
    child: ShaderMask(
      shaderCallback: (Rect bounds) {
        final gradient = LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: gradientColorsList,
          stops: [0.0, 0.33, 0.66, 1.0],
          tileMode: TileMode.mirror,
        );
        return gradient.createShader(Offset.zero & bounds.size);
      },
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontStyle: fontStyle,
          color: Colors.white,
        ),
        textAlign: textAlignment,
      ),
    ),
  );
}

Widget gradientIcon(
    IconData icon, double size, List<Color> gradientColorsList) {
  return Center(
    child: ShaderMask(
      shaderCallback: (Rect bounds) {
        return LinearGradient(
          colors: gradientColorsList,
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          /*
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(1.0, 1.0),
          */
          stops: [0.0, 0.33, 0.66, 1.0],
          tileMode: TileMode.mirror,
        ).createShader(bounds);
      },
      child: Icon(
        icon,
        color: Colors.white,
        size: size,
      ),
    ),
  );
}

Widget gradientButton(
    double elevation,
    double borderRadius,
    double padding,
    double width,
    double height,
    List<Color> gradientColorsList,
    List<Widget> innerContent) {
  return new RaisedButton(
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    splashColor: Colors.white12,
    highlightColor: Colors.white12,
    elevation: elevation,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
    ),
    onPressed: () {},
    padding: EdgeInsets.all(0.0),
    child: new Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        gradient: new LinearGradient(
          colors: gradientColorsList,
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(1.0, 1.0),
          stops: [0.0, 0.33, 0.66, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),
      padding: EdgeInsets.all(padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: innerContent,
      ),
    ),
  );
}

Widget gradientCircularButton(
    double height,
    double width,
    double elevation,
    double borderRadius,
    double padding,
    List<Color> gradientColorsList,
    List<Widget> innerContent) {
  return new RaisedButton(
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    splashColor: Colors.white12,
    highlightColor: Colors.white12,
    elevation: elevation,
    shape: CircleBorder(
      side: BorderSide.none,
    ),
    onPressed: () {},
    padding: EdgeInsets.all(0.0),
    child: new Container(
      margin: EdgeInsets.all(0.0),
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        gradient: new LinearGradient(
          colors: gradientColorsList,
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(1.0, 1.0),
          stops: [0.0, 0.33, 0.66, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),
      padding: EdgeInsets.all(padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: innerContent,
      ),
    ),
  );
}

Widget gradientCard(
    double cardBorderRadius,
    double cardMargin,
    double cardElevation,
    List<Color> cardGradientColorsList,
    Widget innerContent) {
  return Material(
    elevation: cardElevation,
    borderRadius: BorderRadius.all(Radius.circular(cardBorderRadius)),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(cardBorderRadius)),
        gradient: new LinearGradient(
          colors: cardGradientColorsList,
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(1.0, 1.0),
          stops: [0.0, 0.33, 0.66, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: 5.0,
          top: 5.0,
          right: 5.0,
          bottom: 0.0,
        ),
        child: InkWell(
          borderRadius: BorderRadius.all(Radius.circular(cardBorderRadius)),
          splashColor: Colors.white12,
          child: Card(
            color: Colors.transparent,
            margin: EdgeInsets.all(cardMargin),
            elevation: 0.0,
            child: innerContent,
          ),
        ),
      ),
    ),
  );
}

Widget categoryCardContent(
    double imageWidth,
    double imageHeight,
    String imagePathOnNetwork,
    String categoryLabel,
    List<Color> categoryLabelGradientColorsList,
    String buttonLabel,
    List<Color> categoryButtonGradientColorsList,
    List<Color> buttonIconGradientColorsList,
    List<Color> buttonLabelGradientColorsList) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Image.network(
        imagePathOnNetwork,
        fit: BoxFit.cover,
        width: imageWidth,
        height: imageHeight,
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            gradientText(categoryLabel, 25.0, FontWeight.bold, FontStyle.normal,
                TextAlign.left, categoryLabelGradientColorsList),
            gradientButton(
              16.0,
              50.0,
              10.0,
              120.0,
              45.0,
              categoryButtonGradientColorsList,
              [
                gradientIcon(Icons.explore, 25, buttonIconGradientColorsList),
                gradientText(
                  buttonLabel,
                  20.0,
                  FontWeight.normal,
                  FontStyle.normal,
                  TextAlign.center,
                  buttonLabelGradientColorsList,
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}

Widget customCarousel(double width, double height, Axis axisDirection,
    double elevation, List<String> carouselContent, int numberOfSlides) {
  return new Container(
    child: new SizedBox(
      width: width,
      height: height,
      child: new PageView.builder(
        scrollDirection: axisDirection,
        itemCount: numberOfSlides,
        controller: new PageController(
          viewportFraction: 0.8,
          initialPage: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return new Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 4.0,
              vertical: 4.0,
            ),
            child: new Material(
              type: MaterialType.card,
              elevation: elevation,
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
              child: new Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  new Image.network(
                    carouselContent[index],
                    fit: BoxFit.cover,
                    width: width,
                    height: height,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    ),
  );
}