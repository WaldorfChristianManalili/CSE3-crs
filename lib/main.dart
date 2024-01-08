import 'package:flutter/material.dart';
import 'faculty/class.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PLM CRS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ClassScreen(),
    );
  }
}
