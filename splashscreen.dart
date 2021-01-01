import 'package:flutter/material.dart';
import 'package:temannugas/login.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  void initState() {
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.network(
              'https://1.bp.blogspot.com/-ul1cfcq1BLw/X98DsaA4HJI/AAAAAAAAAUE/ySuVqO-lKh0rjFQ11TVfGGHITk_znXt9ACNcBGAsYHQ/tnlogo1.jpeg',
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Teman Nugas',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              'Copyright. Teman Nugas 2020',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
