import 'package:brew_crew/screens/authenticate/registration.dart';
import 'package:brew_crew/screens/authenticate/sign_in..dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool isSignIn = true;

  void toggleView() {
    setState(() {
      isSignIn = !isSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isSignIn) {
      return (SingIn(toggleView: toggleView));
    } else {
      return (Registration(toggleView: toggleView));
    }
  }
}
