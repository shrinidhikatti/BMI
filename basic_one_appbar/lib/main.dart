import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'constatnt.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      title: ('appbar app'),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
