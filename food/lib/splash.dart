// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:food/homepage.dart';

class Splash extends StatefulWidget {
  const Splash({ Key? key }) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
   Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => HomePage())));
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage( 
      image: AssetImage("assets/splash.png"),
      fit: BoxFit.cover,
    )));
  }
}