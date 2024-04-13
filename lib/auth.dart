import 'package:flutter/material.dart';

class AuthUI extends StatefulWidget {
  const AuthUI({super.key});

  @override
  State<AuthUI> createState() => _AuthUIState();
}

class _AuthUIState extends State<AuthUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(body: Image.asset('lib/assets/Auth.png')),
    );
  }
}
