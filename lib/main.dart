import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/weather_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(brightness: Brightness.dark, primarySwatch: Colors.orange),
      home: WeatherPage(),
    );
  }
}
