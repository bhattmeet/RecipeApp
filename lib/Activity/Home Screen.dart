import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/Constants/Colors.dart';
import 'package:flutter_app/Constants/Images.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              color: White,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(18, 18, 0, 0),
                    child: Container(
                      child: CircularProfileAvatar(
                        imageProfile,
                        radius: 26,
                        backgroundColor: Colors.transparent,
                        borderWidth: 3,
                        borderColor: offWhite,
                        animateFromOldImageOnUrlChange: true,
                        elevation: 6.0,
                        cacheImage: false,
                        placeHolder: (context, url) => Container(
                          child: Image.asset("assets/images/useravatar.svg"),
                        ),
                        onTap: () {
                          Scaffold.of(context).showSnackBar(SnackBar(content: Text("Clicked"),duration: Duration(seconds: 3),
                          ));
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 18, 18, 0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        alignment: Alignment.topCenter,
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.transparent,
                            border: Border.all(
                              color: BgColor,
                              width: 1.5,
                            )),
                        child: IconButton(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          icon: Icon(Icons.search, color: Black, size: 28),
                          onPressed: () {
//                            Navigator.push(
//                                context,
//                                new MaterialPageRoute(
//                                    builder: (context) => LoginScreen()));
                          },
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
