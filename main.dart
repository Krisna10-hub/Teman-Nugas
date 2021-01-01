import 'package:flutter/material.dart';
import 'package:temannugas/splashscreen.dart';
import 'package:temannugas/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
