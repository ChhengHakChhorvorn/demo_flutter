
import 'package:demo_flutter/presentation/home_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  static Color myColor = Colors.deepPurple;
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomeScreen(),


    );
  }
}
