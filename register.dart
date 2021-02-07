import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:temannugas/authenticate/sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:temannugas/authenticate/auth_handler.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:temannugas/shared/constants.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final globalKey = GlobalKey<ScaffoldState>();
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blueAccent,
        brightness: Brightness.dark,
        title: Text('REGISTER',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
      ),
      key: globalKey,
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        TextField(
                          decoration:
                              textInputDecoration.copyWith(hintText: 'Email'),
                          controller: emailController,
                        ),
                      ]),
                ),
                Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        TextField(
                          decoration: textInputDecoration.copyWith(
                              hintText: 'Password'),
                          controller: passwordController,
                          autofocus: false,
                          obscureText: true,
                        ),
                      ]),
                ),
                Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        FlatButton(
                          color: Colors.blue[400],
                          child: Text(
                            'REGISTER',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () async {
                            if (emailController.text == '' ||
                                passwordController.text == '') {
                              showToast('Input Your Email & Password');
                            } else {
                              await AuthHandler().signUp(emailController.text,
                                  passwordController.text);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignIn(),
                                  ));
                            }
                          },
                        ),
                      ]),
                ),
                Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: Text(
                            'Already Have An Account?',
                          ),
                        ),
                        FlatButton(
                          child: Text('Login'),
                          color: Colors.transparent,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignIn(),
                                ));
                          },
                        ),
                      ]),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }

  showToast(text) {
    Fluttertoast.showToast(
        msg: text,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black.withOpacity(0.5),
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
