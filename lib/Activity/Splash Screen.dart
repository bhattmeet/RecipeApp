import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Activity/Login%20Screen.dart';
import 'package:flutter_app/Constants/Images.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  splashTime() async {
    var duration = new Duration(seconds: 3);
    return new Timer(duration, navigationPage);
  }

  void navigationPage() {
    Navigator.push(
        context, new MaterialPageRoute(builder: (context) => new LoginScreen()));
  }

  @override
  void initState() {
    super.initState();
    splashTime();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(bg),fit: BoxFit.fill),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(height: 70,),
              Image.asset(
                "assets/images/logo.png",
                height: 400,
                width: 400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
