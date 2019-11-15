import 'package:flutter/material.dart';
//import 'package:estore/components/components.dart';
//import 'package:estore/branding/branding.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreen extends StatelessWidget {
  final String brandLogo = 'assets/logo-inverted.svg';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      top: false,
      left: false,
      right: false,
      child: Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              SvgPicture.asset(
                brandLogo,
                semanticsLabel: 'Brand Logo',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
