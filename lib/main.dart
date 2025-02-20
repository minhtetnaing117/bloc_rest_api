import 'package:bloc_rest_api/module.dart';
import 'package:bloc_rest_api/screen/home.dart';
import 'package:flutter/material.dart';

void main() {
  locator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}