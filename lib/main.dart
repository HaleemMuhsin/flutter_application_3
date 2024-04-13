import 'package:flutter/material.dart';
import 'package:flutter_application_3/auth.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor:
              Colors.black, // Set default background color of Scaffold to black
        ),
        home: AuthUI());
  }
}
