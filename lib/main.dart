import 'package:flutter/material.dart';
import 'package:glow_up/home_page.dart';
import 'package:glow_up/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),

      routes: {'/homepage': (context) => HomePage()},
    );
  }
}
