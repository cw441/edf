import 'package:flutter/material.dart';
import 'package:untitled/screen/homePage.dart';
import 'package:untitled/screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      routes: {
        HomePage.id : (context) => HomePage()
      },
      initialRoute: HomePage.id,
    );
  }
}

