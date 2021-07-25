import 'dart:async';

import 'package:dicoding/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreenController{

  startSplashScreen(context) async {
    var duration  = const Duration(seconds: 5);
    return Timer(duration, (){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_){
          return HomePage();
        })
      );
    });
  }
}