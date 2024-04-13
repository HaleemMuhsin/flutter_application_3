import 'package:flutter/material.dart';

class EditUI extends StatefulWidget {
  const EditUI({super.key});

  @override
  State<EditUI> createState() => _EditUIState();
}

class _EditUIState extends State<EditUI> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: Text('Edit')),
    ));
  }
}
