import 'package:flutter/material.dart';
import 'class_screen.dart';

void main() {
  runApp(FacultyMain());
}

class FacultyMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Faculty Home',
      theme: ThemeData(
        primaryColor: Color(0xFF404040),
        colorScheme: ColorScheme.light(
          primary: Color(0xFF404040),
          onPrimary: Colors.white,
        ),
        tabBarTheme: TabBarTheme(
          labelColor: Color(0xFF0F172A),
          unselectedLabelColor: Colors.white60,
          indicator: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      home: ClassScreen(),
    );
  }
}