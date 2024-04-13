import 'package:flutter/material.dart';
import 'package:flutter_application_3/sign_in.dart';

class AuthUI extends StatefulWidget {
  const AuthUI({Key? key}) : super(key: key);

  @override
  State<AuthUI> createState() => _AuthUIState();
}

class _AuthUIState extends State<AuthUI> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      'lib/assets/Auth.png',
                    ),
                  ),
                ),
                Positioned(
                  top: 220,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding:
                        EdgeInsets.all(10.0), // Adjust the padding as needed
                    child: ClipRRect(
                      // Adjust the border radius as needed
                      child: Image.asset(
                        'lib/assets/Auth_1.png', // Adjust the path to your image asset
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 230,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding:
                        EdgeInsets.all(10.0), // Adjust the padding as needed
                    child: ClipRRect(
                      // Adjust the border radius as needed
                      child: Image.asset(
                        'lib/assets/Auth_2.png', // Adjust the path to your image asset
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text('Start your journey now',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignIn()),
                ); // Add your button onPressed logic here
              },
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(250, 50)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        18), // Adjust the border radius as needed
                  ),
                ),
              ),
              child: Text(
                'Sign In',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
