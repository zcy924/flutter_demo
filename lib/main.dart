import 'package:flutter/material.dart';
import 'package:flutter_3/pages/home_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '仿照知乎布局',
      theme: ThemeData(
          primaryColor: Colors.redAccent,
          primarySwatch: Colors.lightBlue,
          backgroundColor: Colors.grey[200]),
      home: new HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
