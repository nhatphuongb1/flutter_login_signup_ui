import 'package:flutter/material.dart';
import 'package:flutter_login_signup_page_ui/pages/login_page.dart';

import '../main.dart';

class SignUpPage extends StatefulWidget {
  static String routeName = "signup";
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    bool isIOS = Theme.of(context).platform == TargetPlatform.iOS;

    var _customInputDecoration = InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 10),
        enabledBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)));

    var _passwordController = TextEditingController();
    var _rePasswordController = TextEditingController();
    var _emailController = TextEditingController();
    var _emailFocus = FocusNode();
    var _passwordFocus = FocusNode();

    @override
    initState() {
      super.initState();
    }

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              isIOS ? Icons.arrow_back_ios : Icons.arrow_back,
              color: Colors.black45,
            ),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(HomePage.routeName);
            },
          ),
        ),
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Create an account",
                        style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Email'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextField(
                                    decoration: _customInputDecoration,
                                    controller: _emailController,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Password'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextField(
                                      obscureText: true,
                                      decoration: _customInputDecoration,
                                      controller: _passwordController)
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Re-Password'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextField(
                                      obscureText: true,
                                      decoration: _customInputDecoration,
                                      controller: _rePasswordController)
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              child: MaterialButton(
                                color: Colors.green,
                                height: 50,
                                minWidth: double.infinity,
                                onPressed: () {},
                                child: Text(
                                  "Register",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(color: Colors.black12),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Have an account already?",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.blueGrey),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, LoginPage.routeName);
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Text("Login",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.blue)),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
