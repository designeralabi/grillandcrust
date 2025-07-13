import 'package:flutter/material.dart';
import 'package:grill_app/screens/card_detailed.dart';
import 'package:grill_app/screens/home.dart';
import 'package:grill_app/screens/logout.dart';
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
      routes: {
        // '/': (context) => Home(title: 'my flutter app'),
        '/profile': (context) => ProfileScreen(),
        '/card_detailed': (context) => CardDetailed(),
        '/logout': (context) => Logout(),
      },
      // title: 'Flutter Demo',
      home: Home(title: 'Home'),
    );
  }
}
