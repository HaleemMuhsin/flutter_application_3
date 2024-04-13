import 'package:flutter/material.dart';
import 'package:flutter_application_3/edit.dart';
import 'package:flutter_application_3/home.dart';
import 'package:flutter_application_3/sign_in.dart';

class CustomBottomNavBar extends StatefulWidget {
  final int selectedIndex; // Define a parameter for the selected index
  const CustomBottomNavBar({Key? key, required this.selectedIndex})
      : super(key: key);

  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  late int _selectedIndex; // Define a variable to store the selected index

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget
        .selectedIndex; // Initialize the selected index from the widget parameter
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.0),
          bottom: Radius.circular(20.0), // Adjust the border radius as needed
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EditUI()),
                );
                break;
              case 1:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeUI()),
                );
                break;
              case 2:
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
    );
  }
}
