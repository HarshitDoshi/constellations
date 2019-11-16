import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class SignInBackground extends StatefulWidget {
  @override
  _SignInBackgroundState createState() => new _SignInBackgroundState();
}

class _SignInBackgroundState extends State<SignInBackground> {
  @override
  Widget build(BuildContext context) {
    return FlareActor(
      'assets/sign_in_bg_animation.flr',
      alignment: Alignment.center,
      fit: BoxFit.cover,
      animation: 'Flow',
      isPaused: false,
    );
  }
}

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  SignInBackground signInBackground = SignInBackground();

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
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: <Widget>[
          signInBackground,
          SingleChildScrollView(
            child: SafeArea(
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
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 20.0,
                          sigmaY: 20.0,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            color: Colors.white.withOpacity(0.0),
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
                              padding:
                                  EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
                              child: Text(
                                'Welcome to Constellations!',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  shadows: <Shadow>[
                                    Shadow(
                                      color: Colors.black87,
                                      blurRadius: 40.0,
                                    ),
                                  ],
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 20.0,
                          sigmaY: 20.0,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            color: Colors.white.withOpacity(0.0),
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
                                    textInputAction: TextInputAction.next,
                                    autocorrect: false,
                                    keyboardType: TextInputType.emailAddress,
                                    keyboardAppearance: Brightness.light,
                                    showCursor: true,
                                    cursorColor: Colors.white,
                                    toolbarOptions: ToolbarOptions(
                                      copy: true,
                                      cut: true,
                                      paste: true,
                                      selectAll: true,
                                    ),
                                    decoration: InputDecoration(
                                      icon: Icon(
                                        Icons.alternate_email,
                                        color: Colors.white,
                                      ),
                                      labelText: 'E-mail',
                                      labelStyle: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  TextFormField(
                                    textInputAction: TextInputAction.done,
                                    autocorrect: false,
                                    showCursor: true,
                                    cursorColor: Colors.white,
                                    toolbarOptions: ToolbarOptions(
                                      copy: false,
                                      cut: false,
                                      paste: false,
                                      selectAll: true,
                                    ),
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      icon: Icon(
                                        Icons.vpn_key,
                                        color: Colors.white,
                                      ),
                                      labelText: 'Passphrase',
                                      labelStyle: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        10.0, 20.0, 10.0, 5.0),
                                    child: MaterialButton(
                                      onPressed: () {},
                                      padding: EdgeInsets.fromLTRB(
                                          20.0, 5.0, 20.0, 5.0),
                                      elevation: 4.0,
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20.0)),
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
                                  Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
                                    child: FlatButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Forgot passphrase?',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(125.0, 10.0, 125.0, 10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 20.0,
                          sigmaY: 20.0,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            color: Colors.white.withOpacity(0.0),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 20.0,
                                spreadRadius: 5.0,
                              ),
                            ],
                          ),
                          child: RaisedButton(
                            textColor: Colors.white,
                            color: Colors.transparent,
                            elevation: 0.0,
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(right: 10.0),
                                  child: Icon(
                                    Icons.person_add,
                                    size: 35.0,
                                  ),
                                ),
                                Text(
                                  'Sign-up',
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}