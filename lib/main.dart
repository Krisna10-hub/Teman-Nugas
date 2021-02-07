import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:temannugas/authenticate/auth_handler.dart';
import 'package:temannugas/screens/splashscreen.dart';
import 'package:provider/provider.dart';
import 'package:temannugas/models/user.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<MyUser>.value(
      value: AuthHandler().getCurrentUser,
      child: MaterialApp(
        home: SplashScreen(),
      ),
    );
  }
}
