import 'package:flutter/material.dart';
import 'package:whatsappclone/screens/homeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.teal[800],
      ),
    );
  }
}
