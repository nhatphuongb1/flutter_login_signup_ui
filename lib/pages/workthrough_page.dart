import 'package:flutter/material.dart';

class WorkThroughPage extends StatefulWidget {
  @override
  _WorkThroughPageState createState() => _WorkThroughPageState();
}

class _WorkThroughPageState extends State<WorkThroughPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                  height: MediaQuery.of(context).size.height * (1 / 3),
                  alignment: Alignment.center,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      "Hello",
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                  )),
              Container(
                height: MediaQuery.of(context).size.height * (1 / 3),
                width: double.infinity,
                child: Center(child: Text("Hello"),),
              )
            ],
          ),
        ));
  }
}
