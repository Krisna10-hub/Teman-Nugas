import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:temannugas/services/auth.dart';
import 'package:temannugas/models/user.dart';
import 'package:temannugas/screens/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: SplashScreen(),
      ),
    );
  }
}
