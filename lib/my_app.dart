import 'package:components/home.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red[400],
        accentColor: Colors.red[400],
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
