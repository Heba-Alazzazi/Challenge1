import 'dart:ui';

import 'package:challenge1_loginscreens/Custom.dart';
import 'package:challenge1_loginscreens/Signup.dart';
import 'package:challenge1_loginscreens/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, color: Colors.white, home: login());
  }
}
