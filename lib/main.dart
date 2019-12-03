import 'package:flutter/material.dart';
import 'package:splash_screen_flutter/HomeScreeen.dart';

import 'CustomRoute.dart';
bool splash=true;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(primarySwatch: Colors.blue),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if(splash){
      splash=false;
      Future.delayed(Duration(seconds: 5),(){
        Navigator.pushReplacement(context, SizeRoute(page: homeScreen()));
      });
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'SplashScreen With Beautiful Route ',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Short descriptions SplashScreen With Beautiful Route  SplashScreen With Beautiful Route ',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
