import 'package:flutter/material.dart';
import 'package:flutterbasics/core/colors.dart';

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.share),
            )
          ],
          title: Text("Slivert App bar"),
          pinned: false,
          floating: false,
          snap: false,
          expandedHeight: 150.0,
          backgroundColor: Colors.amber,
          flexibleSpace: Center(child: Text("Flexible space area", style: TextStyle(fontSize: 20, color: Colors.black54),)),
        ),
        SliverFillRemaining(
            child: Container(
                color: bgColor, child: Center(child: Text("Page Two", style: TextStyle(color: textColor, fontSize: 50)))))
      ],),
    );
  }
}
