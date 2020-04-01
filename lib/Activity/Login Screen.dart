import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_app/Constants/Colors.dart';
import 'package:flutter_app/Constants/Images.dart';
import 'package:shape_of_view/shape_of_view.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    bool _isHidden = true;

    return Material(
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                ShapeOfView(
                  shape: ArcShape(
                      direction: ArcDirection.Outside,
                      height: 70,
                      position: ArcPosition.Bottom),
                  height: MediaQuery.of(context).size.height * 0.5,
                  elevation: 6.0,
                  child: Container(
                    color: Red,
                  ),
                ),
                Column(
                  children: <Widget>[
                    Center(
                      heightFactor: 1,
                      child: Image.asset(
                        login_img,
                        width: MediaQuery.of(context).size.width * 0.7,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: White,
                          fontSize: 50,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          decorationStyle: TextDecorationStyle.solid,
                          decorationThickness: 2.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                      child: Container(
                        margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
                        height: 235.0,
                        decoration: BoxDecoration(
                          color: White,
                          boxShadow: [
                            BoxShadow(
                              color: BgColor,
                              blurRadius: 10,
                              offset: Offset(0.0, 5.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(20.0),
//                          gradient: LinearGradient(
//                              colors: [Pink, lightPink],
//                              begin: Alignment.centerLeft,
//                              end: Alignment.centerRight
//                          ),
                        ),
                        child: Form(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(25, 40, 25, 0),
                                child: Theme(
                                  data: ThemeData(primaryColor: BgColor),
                                  child: TextFormField(
                                    maxLines: 1,
                                    keyboardType: TextInputType.emailAddress,
                                    autofocus: false,
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.person,
                                        color: BgColor,
                                      ),
                                      labelText: "Email address",
                                      contentPadding: EdgeInsets.fromLTRB(
                                          20.0, 20.0, 20.0, 20.0),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 30),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                                child: Theme(
                                  data: ThemeData(primaryColor: BgColor),
                                  child: TextFormField(
                                    maxLines: 1,
                                    obscureText: _isHidden,
                                    keyboardType: TextInputType.visiblePassword,
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.lock,
                                        color: BgColor,
                                      ),
                                      suffixIcon: IconButton(
                                        icon: Icon(_isHidden ? Icons.visibility_off : Icons.visibility),
                                        onPressed: (){
                                          setState(() {
                                            _isHidden = !_isHidden;
                                          print("hello");
                                          });
                                        },
                                      ),
                                      labelText: "Password",
                                      contentPadding: EdgeInsets.fromLTRB(
                                          20.0, 20.0, 20.0, 20.0),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 70),
                    RaisedButton(
                      onPressed: (){
                        print("hello");
                      },
                      splashColor: offWhite,
                      elevation: 6.0,
                      autofocus: true,
                      animationDuration: Duration(seconds: 5),
                      padding: EdgeInsets.all(0.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)
                      ),
                      textColor: White,
                      color: Red,
                      child: Ink(
                        child: Text("Login",style: TextStyle(fontSize: 20),),
                        padding: EdgeInsets.fromLTRB(70,25,70,25),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [darkRed,lightOrange],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(15.0)
                        ),
                      ),
//                      child: Text("Login",style: TextStyle(fontSize: 20),),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
