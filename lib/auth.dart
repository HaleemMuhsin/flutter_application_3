import 'package:flutter/material.dart';

class AuthUI extends StatefulWidget {
  const AuthUI({Key? key}) : super(key: key);

  @override
  State<AuthUI> createState() => _AuthUIState();
}

class _AuthUIState extends State<AuthUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10.0), // Adjust the padding as needed
        child: ClipRRect(
          borderRadius:
              BorderRadius.circular(13.0), // Adjust the border radius as needed
          child: Image.asset(
            'lib/assets/Auth.png', // Adjust the path to your image asset
          ),
        ),
      ),
    );
  }
}
