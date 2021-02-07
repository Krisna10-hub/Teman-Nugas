import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:temannugas/authenticate/auth_handler.dart';
import 'package:temannugas/authenticate/register.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:temannugas/shared/constants.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
        title: Text('Login',
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            TextField(
                              decoration: textInputDecoration.copyWith(
                                  hintText: 'Email'),
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
                      padding: new EdgeInsets.all(5.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            FlatButton(
                              color: Colors.blue[400],
                              child: Text(
                                'LOGIN',
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () async {
                                if (emailController.text == '' ||
                                    passwordController.text == '') {
                                  showToast('Input Your Email & Password!');
                                } else {
                                  await AuthHandler()
                                      .signInWithEmailAndPassword(
                                          emailController.text,
                                          passwordController.text);
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
                                'Dont Have An Account?',
                              ),
                            ),
                            FlatButton(
                              padding: new EdgeInsets.only(
                                right: 50,
                                left: 50,
                              ),
                              child: Text('Register'),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Register(),
                                    ));
                              },
                            ),
                          ]),
                    ),
                  ],
                )),
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
