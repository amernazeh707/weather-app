import 'package:flutter/material.dart';
import 'package:weatherapp/weatherScreen.dart';
import 'package:weatherapp/weather_process_screen.dart';

void main() {
  runApp( MyApp());

}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : WeatherProcessScreen(),
    );
  }
}

