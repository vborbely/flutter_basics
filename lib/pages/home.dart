import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterbasics/core/colors.dart';
import 'package:flutterbasics/pages/page_one.dart';
import 'package:flutterbasics/pages/page_two.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text("Home", style: TextStyle(color: textColor, fontSize: 50)),
          Column(
            children: <Widget>[
              RaisedButton(
                splashColor: Colors.black,
                color: Colors.pink,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Sample button #1",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                onPressed: () {},
              ),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                color: Colors.blue,
                child: Text(
                  "Switch to Page One",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => PageOne()),
                  );
                },
              ),
              SizedBox(
                height: 30,
              ),
              Transform.rotate(
                angle: 0.2,
                child: RaisedButton(
                  color: Colors.amber,
                  elevation: 5,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Switch to Page Two",
                      style: TextStyle(fontSize: 20, color: Colors.green),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => PageTwo()),
                    );
                  },
                ),
              )
            ],
          ),
        ],
      )),
    );
  }
}
