import 'package:flutter/material.dart';
import 'package:public_transportation/screens/home_screen.dart';
import 'package:public_transportation/screens/landing_screen.dart';
import 'package:public_transportation/screens/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => HomeScreen(),
        '/search': (context) => SearchScreen(),
      },
      home: const LandingScreen(), // Start with the animated landing screen
      debugShowCheckedModeBanner: false, // Optional: removes debug banner
    );
  }
}
