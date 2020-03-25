import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final int order;
  final Function onPress;

  const ListItem({this.order, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onPress != null) {
          onPress(context);
        }
      },
      child: Card(
        elevation: 2,
        child: ListTile(
          subtitle: Text("Subtitle text"),
          title: Text(
            "List item #$order",
            style: TextStyle(color: order % 2 == 0 ? Colors.black45 : Colors.deepOrange, fontSize: 25),
          ),
        ),
      ),
    );
  }
}
