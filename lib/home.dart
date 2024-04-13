import 'package:flutter/material.dart';
import 'package:flutter_application_3/edit.dart';
import 'package:flutter_application_3/sign_in.dart';

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
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ClipRRect(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20.0),
              bottom:
                  Radius.circular(20.0), // Adjust the border radius as needed
            ),
            child: BottomNavigationBar(
              currentIndex: _selectedIndex,
              onTap: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
                // Add navigation logic here based on the selected index
                switch (index) {
                  case 0:
                    // Navigate to Edit screen
                    // Replace 'EditScreen()' with your desired destination widget
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EditUI()),
                    );
                    break;
                  case 1:
                    // Navigate to Home screen
                    // Replace 'HomeScreen()' with your desired destination widget
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeUI()),
                    );
                    break;
                  case 2:
                    // Navigate to Profile screen
                    // Replace 'ProfileScreen()' with your desired destination widget
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignIn()),
                    );
                    break;
                }
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.edit),
                  label: 'Edit',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle),
                  label: 'Profile',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
