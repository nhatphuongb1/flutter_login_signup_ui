import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_signup_page_ui/pages/login_page.dart';
import 'package:flutter_login_signup_page_ui/pages/signup_page.dart';
import 'package:flutter_login_signup_page_ui/pages/workthrough_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '': (context) => WorkThroughPage(),
        HomePage.routeName: (context) => HomePage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        LoginPage.routeName: (context) => LoginPage(),
        SignUpPage.routeName: (context) => SignUpPage(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  static String routeName = "home";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Welcome',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.blueAccent),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Flutter UI | Login and Signup Page Design & Animation",
                        style: TextStyle(color: Colors.blueGrey, fontSize: 15),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                      padding: EdgeInsets.all(5),
                      child: CachedNetworkImage(
                        imageUrl:
                            'https://cdn.pixabay.com/photo/2018/02/28/23/00/bear-3189349_960_720.png',
                      )),
                ],
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    MaterialButton(
                      height: 50,
                      minWidth: double.infinity,
                      onPressed: () {
                        Navigator.of(context).pushNamed(LoginPage.routeName);
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      child: MaterialButton(
                        height: 50,
                        minWidth: double.infinity,
                        onPressed: () {
                          Navigator.of(context).pushNamed(SignUpPage.routeName);
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
