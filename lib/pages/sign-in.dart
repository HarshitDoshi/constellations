import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 20.0,
                      spreadRadius: 10.0,
                    ),
                  ],
                ),
                height: 150.0,
                width: 150.0,
                child: Image.asset(
                  'assets/logo.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(40.0, 30.0, 40.0, 0.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  color: Colors.white,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 20.0,
                      spreadRadius: 5.0,
                    ),
                  ],
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
                    child: Text(
                      'Welcome to Constellations!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  color: Colors.white,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 20.0,
                      spreadRadius: 5.0,
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                  child: Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.alternate_email),
                            labelText: 'E-mail',
                          ),
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            icon: Icon(Icons.vpn_key),
                            labelText: 'Passphrase',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                          child: MaterialButton(
                            onPressed: () {},
                            padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                            elevation: 4.0,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                            ),
                            child: Text(
                              'Sign-in',
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FlatButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot passphrase?',
                        ),
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: Text(
                          'Help Center',
                        ),
                      ),
                    ],
                  ),
                  VerticalDivider(
                    color: Colors.black54,
                    thickness: 2.0,
                  ),
                  Container(
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Sign-up',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}