// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_dukan/home.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Our First Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Bottom(),
    );
  }
}

