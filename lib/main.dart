import 'package:flutter/material.dart';
import 'package:food_delivery_demo/Screens/login_screen.dart';
import 'package:food_delivery_demo/Screens/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FoodNinja',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF53E88B)),
        useMaterial3: true,
      ),
      home: const SignupScreen(),
    );
  }
}
