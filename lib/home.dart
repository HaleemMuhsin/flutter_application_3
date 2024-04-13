import 'package:flutter/material.dart';
import 'package:flutter_application_3/custom_bottom_nav_bar.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({Key? key}) : super(key: key);

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  int _selectedIndex = 1; // Add this line to track the selected tab index

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CustomBottomNavBar(selectedIndex: 1),
      ),
    );
  }
}
