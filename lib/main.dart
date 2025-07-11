import 'package:flutter/material.dart';
import 'package:grill_app/screens/home.dart';
import 'package:grill_app/screens/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {'/profile': (context) => ProfileScreen()},
      // title: 'Flutter Demo',
      home: Home(title: 'Home'),
    );
  }
}
