import 'package:bmi/modules/bmihome.dart';
import 'package:bmi/modules/bmiresult.dart';
import 'package:flutter/material.dart';

import 'modules/loginPage.dart';

void main(){

  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
      "/":(context)=>LoginPage(),
      "/home":(context)=>BMI(),
      "Result":(context)=>BmiResult(),
      },
    );
  }
}

