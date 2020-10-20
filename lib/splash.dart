import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => new SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(milliseconds: 4000);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/Home');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return new Scaffold(
      backgroundColor: Color(0xffffffff),
      body: new Container(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[


            Container(
//              decoration: BoxDecoration(
//                  color: Colors.transparent
//              ),
              child:
              Image.asset('Images/WaileyLog.png',
                height: height/4,),

            ),

            Padding(
                padding: EdgeInsets.all(15.0),
                child: new SpinKitPouringHourglass(
                  color: Color(0xffd6564d),
                  size: 42,
                )
            ),

          ],
        ),
      ),
    );
  }
}
