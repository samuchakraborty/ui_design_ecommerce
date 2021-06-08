import 'dart:async';


import 'package:flutter/material.dart';
import 'package:ui_design/SecondPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home:SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {


  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  gotoCheck();
  }

  void gotoCheck(){

    Timer(
      Duration(seconds: 5),
          () => Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) => SellerOrBuyer(),),),);

  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(

      body: Container(
        child: Center(child: Image.asset('images/splashImage.png',   width: MediaQuery.of(context).size.width,
          fit: BoxFit.fitWidth,),),
      ),
    );










  }
}

