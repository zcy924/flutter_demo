import 'package:flutter/material.dart';

AppBar messageBar() {
  return AppBar(
    leading: Center(
      child: Padding(
        padding: EdgeInsets.only(
          left: 10,
        ),
        child: Text(
          '消息',
          style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),
        ),
      ),
    ),
    actions: <Widget>[
      IconButton(icon: Icon(Icons.notifications),onPressed: (){},)
    ],
  );
}
