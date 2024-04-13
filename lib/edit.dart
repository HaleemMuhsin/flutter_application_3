import 'package:flutter/material.dart';
import 'package:flutter_application_3/custom_bottom_nav_bar.dart';

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
        appBar: AppBar(
          title: Text('edit'),
        ),
        bottomNavigationBar: CustomBottomNavBar(selectedIndex: 0),
      ),
    );
  }
}
