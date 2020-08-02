import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_signup_page_ui/main.dart';
import 'package:flutter_login_signup_page_ui/pages/signup_page.dart';

class LoginPage extends StatefulWidget {
  static String routeName = "login";

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    bool isIOS = Theme.of(context).platform == TargetPlatform.iOS;

    var _customInputDecoration = InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 10),
        enabledBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)));

    var _passwordController = TextEditingController();
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
              size: 10,
            ),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(HomePage.routeName);
            },
          ),
        ),
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  "Login",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Login to your account",
                  style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
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
                    height: 30,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: MaterialButton(
                      color: Colors.blueAccent,
                      height: 50,
                      minWidth: double.infinity,
                      onPressed: () {},
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Don't have an account?",
                          style:
                              TextStyle(fontSize: 14, color: Colors.blueGrey),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, SignUpPage.routeName);
                          },
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: Text("Sign Up",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.green)),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 200,
              child: CachedNetworkImage(
                imageUrl:
                    "https://cdn.pixabay.com/photo/2016/12/13/08/45/bird-1903523_960_720.png",
              ),
            )
          ],
        ));
  }
}
