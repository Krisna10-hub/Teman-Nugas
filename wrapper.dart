import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:temannugas/authenticate/sign_in.dart';
import 'package:temannugas/home/home.dart';
import 'package:temannugas/models/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final currentUser = Provider.of<MyUser>(context);

    if (currentUser == null) {
      return SignIn();
    } else {
      return Home();
    }
  }
}
