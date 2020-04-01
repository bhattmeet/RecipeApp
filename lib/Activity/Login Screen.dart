import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/Constants/Colors.dart';
import 'package:flutter_app/Constants/Images.dart';
import 'package:shape_of_view/shape_of_view.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {

    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    bool _isHidden = false;

    return Material(
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                _shapeView(),
                Column(
                  children: <Widget>[
                    _imgView(),
                    SizedBox(height: deviceHeight*0.05),
                    _loginText(),
                    SizedBox(height: deviceHeight*0.03),
                    _textFeildContainer(),
                    SizedBox(height: deviceHeight*0.09),
                    _loginRaisedButton(),
                    SizedBox(height: deviceHeight*0.05,)
                    
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _shapeView(){

    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return ShapeOfView(
      shape: ArcShape(
          direction: ArcDirection.Outside,
          height: deviceHeight*0.07,
          position: ArcPosition.Bottom),
      height: deviceHeight * 0.5,
      elevation: 6.0,
      child: Container(
        color: Red,
      ),
    );
  }
  Widget _imgView(){

    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return Center(
      heightFactor: 1,
      child: Image.asset(
        login_img,
        width: deviceWidth * 0.7,
        height:  deviceHeight * 0.2,
        alignment: Alignment.topCenter,
      ),
    );
  }
  Widget _textFeildContainer(){

    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
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
      ),
      child: Form(
        child: Column(
          children: <Widget>[
            _emailTextField(),
            SizedBox(height: deviceHeight*0.03),
            _passwordTextField(),
          ],
        ),
      ),
    );
  }
  Widget _loginText(){

    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return FittedBox(
      fit: BoxFit.contain,
      child: Text(
        "Login",
        style: TextStyle(
          color: White,
          fontSize: deviceHeight*0.06,
          letterSpacing: 1,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
  Widget _emailTextField(){

    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 40, 25, 0),
      child: Theme(
        data: ThemeData(primaryColor: BgColor),
        child: TextFormField(
          maxLines: 1,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.person,
              color: BgColor,
            ),
            labelText: "Email address",
            contentPadding: EdgeInsets.fromLTRB(
                0.0,
                deviceHeight*0.019,
                0.0,
                deviceHeight*0.019),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
      ),
    );
  }
  Widget _passwordTextField(){

    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    bool _isHidden = false;

    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 0, 25, 35),
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
            suffixIcon: GestureDetector(
              child: Icon(_isHidden ? Icons.visibility_off : Icons.visibility),
              onTap: (){
                setState(() {
                  _isHidden = !_isHidden;
                  print("hello");
                });
              },
            ),
            labelText: "Password",
            contentPadding: EdgeInsets.fromLTRB(
                0.0,
                deviceHeight*0.019,
                0.0,
                deviceHeight*0.019),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
      ),
    );
  }
  Widget _loginRaisedButton(){

    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    bool _isHidden = false;

    return FlatButton(
      onPressed: (){
        print("hello");
      },
      splashColor: offWhite,
      padding: EdgeInsets.fromLTRB(10,0,10,10),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100.0)
      ),
      textColor: White,
      color: Colors.transparent,
      child: Ink(
        child: Text("Login",style: TextStyle(fontSize: deviceHeight*0.023)),
        padding: EdgeInsets.fromLTRB(90,18,90,18),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: GradientColors.cherry,
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            boxShadow: [
              BoxShadow(
                color: BgColor,
                blurRadius: 3,
                offset: Offset(3.0, 3.0),
              )
            ],
            borderRadius: BorderRadius.circular(100.0)
        ),
      ),
    );
  }
}
